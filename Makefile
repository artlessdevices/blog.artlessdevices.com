posts=$(wildcard posts/*.md)
post_pages=$(addprefix site/,$(notdir $(posts:.md=.html)))
post_sources=$(posts:.md=.meta) $(posts:.md=.content)

partials=$(wildcard partials/*)

all: site/index.html site/atom.xml $(post_pages)

site/index.html: index.html.sh tidy.config $(post_sources) $(partials) | site
	./index.html.sh | tidy -config tidy.config > $@

site/%.html: posts/%.meta posts/%.content post.html.sh tidy.config $(partials) | site
	./post.html.sh $* | tidy -config tidy.config > $@

site/atom.xml: atom.xml.sh tidy.config $(post_sources) | site
	./atom.xml.sh > $@

site:
	mkdir -p site

.INTERMEDIATE: $(post_sources) $(posts:.md=.split0) $(posts:.md=.split1)

posts/%.meta: posts/%.split0
	cat $< | tail -n +2 | sed 's/\([a-z]\+\): \(.\+\)/export \1="\2"/' > $@

posts/%.content: posts/%.split1
	tail -n +2 $< > $@

posts/%.split0 posts/%.split1: posts/%.md
	csplit -s -n 1 -f posts/$*.split $< %^---% /^---/

.PHONY: clean

clean:
	rm -rf site
