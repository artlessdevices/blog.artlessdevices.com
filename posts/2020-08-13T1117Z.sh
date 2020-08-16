export title="First Post"
export summary="first post"
content=$(
cat<<HTML
<p>Here is the first post!</p>
HTML
) || true
export content
