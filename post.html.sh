#!/bin/bash
source "posts/$1.sh"
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
      <p>summary</p>
      <p>$1</p>
      $content
    </main>
    $(cat partials/footer.html)
  </body>
</html>
HTML
