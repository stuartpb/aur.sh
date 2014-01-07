#!/bin/sh
echo Content-type: text/html
echo
perl vendor/Markdown.pl README.md
