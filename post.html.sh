#!/bin/bash
source "posts/$1.sh"
cat <<HTML
<!doctype html>
<html lang=en-US>
  <head>
    $(cat partials/meta.html)
    <title>$title</title>
  </head>
  <body>
    $(cat partials/banner.html)
    <main role=main>
      <h2>$title</h2>
      <p class=summary>summary</p>
      <p class=date>$date</p>
      $content
    </main>
    $(cat partials/footer.html)
  </body>
</html>
HTML
