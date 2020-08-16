#!/bin/bash
cat <<HTML
<!doctype html>
<html lang=en-US>
  <head>
    $(cat partials/meta.html)
    <link rel=alternate href=/atom.xml type=application/atom+xml>
    <title>Artless Devices Blog</title>
  </head>
  <body>
    $(cat partials/banner.html)
    <main role=main>
      <ol reversed>
HTML
for meta in `ls posts | tac`; do (
source "posts/$meta"
base=$(basename "$meta" ".sh")
cat <<HTML
        <li>
          <a href="$base">$title</a>
          <p>$summary</p>
          <p>$date</p>
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
