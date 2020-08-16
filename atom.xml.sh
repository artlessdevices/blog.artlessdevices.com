#!/bin/bash
cat <<XML
<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" >
  <link href="https://writing.kemitchell.com/atom.xml" rel="self" type="application/atom+xml" />
  <link href="https://writing.kemitchell.com/" rel="alternate" type="text/html" />
  <updated>$(date --iso-8601=minutes --universal | sed 's/+00:00/Z/')</updated>
  <id>https://writing.kemitchell.com/atom.xml</id>
  <title type="html">Artless Devices Blog</title>
XML
for meta in `ls posts | tac`; do (
source "posts/$meta"
timestamp=$(basename "$meta" ".sh")
permalink="https://blog.artlessdevices.com/$timestamp.html"
cat <<HTML
  <entry>
    <title>$title</title>
    <link href="$permalink" rel="alternate" type="text/html" title="$title"/>
    <id>$permalink</id>
    <published>$timestamp</published>
    <content type="html">$content</content>
  </entry>
HTML
) done
cat <<XML
</feed>
XML
