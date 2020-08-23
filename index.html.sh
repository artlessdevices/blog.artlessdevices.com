#!/bin/bash
cat <<HTML
<!doctype html>
<html lang=en-US>
  <head>
    $(cat partials/meta.html)
    <meta name="twitter:title" content="Artless Devices Blog">
    <meta name="og:title" content="Artless Devices Blog">
    <link rel=alternate href=/atom.xml type=application/atom+xml>
    <title>Artless Devices Blog</title>
  </head>
  <body>
    $(cat partials/banner.html)
    <main role=main>
      <ol reversed>
HTML
for meta in `find posts -iname "*.meta" | sort | tac`; do (
source "$meta"
timestamp=$(basename "$meta" ".meta")
cat <<HTML
        <li>
          <a href="$timestamp">$title</a>
          $(echo "$summary" | commonmark)
          <p>$timestamp</p>
        </li>
HTML
) done
cat <<HTML
      </ol>
    </main>
    $(cat partials/footer.html)
  </body>
</html>
HTML
