export title="Second Post"
export summary="second post"
content=$(
cat<<HTML
<p>Here is the post!</p>
HTML
) || true
export content
