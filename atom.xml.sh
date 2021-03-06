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
for meta in `find posts -iname "*.meta" | sort | tac`; do (
source "$meta"
timestamp=$(basename "$meta" ".meta")
permalink="https://blog.artlessdevices.com/$timestamp"
cat <<HTML
  <entry>
    <title>$title</title>
    <link href="$permalink" rel="alternate" type="text/html" title="$title"/>
    <id>$permalink</id>
    <published>$timestamp</published>
    <author>
      <name>$author</name>
      <email>$email</email>
    </author>
    <content type="html">$(commonmark < posts/$timestamp.content)</content>
  </entry>
HTML
) done
cat <<XML
</feed>
XML
