export title="First Post"
export summary="first post"
export author="K.E. Mitchell"
export email="kyle@artlessdevices.com"
content=$(
cat<<HTML
<p>Here is the first post!</p>
HTML
) || true
export content
