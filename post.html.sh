#!/bin/bash
source "posts/$1.meta"
cat <<HTML
<!doctype html>
<html lang=en-US>
  <head>
    $(cat partials/meta.html)
    <meta name="twitter:title" content="$title">
    <meta name="og:title" content="$title">
    <title>$title</title>
  </head>
  <body>
    $(cat partials/banner.html)
    <main role=main>
      <h2>$title</h2>
      $(echo "$summary" | commonmark)
      <p>$1</p>
      $(commonmark < "posts/$1.content")
      <p>&mdash; <a href="mailto:$email">$author</a></p>
    </main>
    $(cat partials/footer.html)
  </body>
</html>
HTML
