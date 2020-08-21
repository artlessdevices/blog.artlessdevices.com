export title="Second Post"
export summary="second post"
export author="K.E. Mitchell"
export email="kyle@artlessdevices.com"
content=$(
cat<<MARKDOWN
<p>Here is the second post!</p>
MARKDOWN
) || true
export content
