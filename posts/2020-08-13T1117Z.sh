export title="First Post"
export summary="first post"
export author="K.E. Mitchell"
export email="kyle@artlessdevices.com"
content=$(
cat<<MARKDOWN
Here is the first post!
MARKDOWN
) || true
export content
