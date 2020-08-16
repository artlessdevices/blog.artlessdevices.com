export title="Second Post"
export date="2020-08-14T05:49Z"
export summary="second post"
content=$(
cat<<HTML
<p>Here is the post!</p>
HTML
) || true
export content
