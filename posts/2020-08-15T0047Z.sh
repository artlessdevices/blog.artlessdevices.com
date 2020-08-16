export title="Second Post"
export summary="second post"
export author="K.E. Mitchell"
export email="kyle@artlessdevices.com"
content=$(
cat<<HTML
<p>Here is the second post!</p>
HTML
) || true
export content
