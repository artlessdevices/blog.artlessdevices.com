#!/bin/bash
source "posts/$1.sh"
cat <<HTML
<!doctype html>
<html lang=en-US>
  <head>
    <meta charset=UTF-8>
    <meta name=viewport content="width=device-width, initial-scale=1">
    <title>Artless Devices Blog</title>
  </head>
  <body>
    <header role=banner>
      <h1>Artless Devices Blog</h1>
    </header>
    <main role=main>
      <h2>$title</h2>
      <p class=summary>summary</p>
      <p class=date>$date</p>
      $content
    </main>
    <footer role=contentinfo>
      <p>&copy; Artless Devices LLC</p>
    </footer>
  </body>
</html>
HTML
