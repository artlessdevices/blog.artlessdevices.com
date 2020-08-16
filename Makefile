posts=$(wildcard posts/*.sh)
partials=$(wildcard partials/*)

all: site/index.html site/atom.xml $(addprefix site/,$(notdir $(posts:.sh=.html)))

site/index.html: index.html.sh tidy.config $(posts) $(partials) | site
	./index.html.sh | tidy -config tidy.config > $@

site/%.html: posts/%.sh post.html.sh tidy.config $(partials) | site
	./post.html.sh $* | tidy -config tidy.config > $@

site/atom.xml: atom.xml.sh tidy.config $(posts) | site
	./atom.xml.sh > $@

site:
	mkdir -p site

.PHONY: clean

clean:
	rm -rf site
