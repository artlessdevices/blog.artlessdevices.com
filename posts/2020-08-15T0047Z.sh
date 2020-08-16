export title="Second Post"
export summary="second post"
content=$(
cat<<HTML
<p>Here is the second post!</p>
HTML
) || true
export content
