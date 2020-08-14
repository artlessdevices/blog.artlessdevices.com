export title="First Post"
export date="2020-08-14T05:49Z"
export summary="first post"
content=$(
cat<<HTML
<p>Here is the post!</p>
HTML
) || true
export content
