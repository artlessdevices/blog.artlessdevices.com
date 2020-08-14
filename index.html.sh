#!/bin/bash
cat <<HTML
<!doctype html>
<html lang=en-US>
  <head>
    <meta charset=UTF-8>
    <meta name=viewport content="width=device-width, initial-scale=1">
    <link rel=alternate href=/atom.xml type=application/atom+xml>
    <title>Artless Devices Blog</title>
  </head>
  <body>
    <header role=banner>
      <h1>Artless Devices Blog</h1>
    </header>
    <main role=main>
      <ol>
HTML
for meta in posts/*.sh; do (
source "$meta"
base=$(basename "$meta" ".sh")
cat <<HTML
        <li>
          <a href="$base">$title</a>
          ($date)
          <p>$summary</p>
        </li>
HTML
) done
cat <<HTML
      </ol>
    </main>
    <footer role=contentinfo>
      <p>&copy; Artless Devices LLC</p>
    </footer>
  </body>
</html>
HTML
