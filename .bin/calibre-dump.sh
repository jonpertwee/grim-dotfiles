#!/bin/bash

calibredb export --all --dont-write-opf \
  --dont-save-cover \
  --formats=EPUB --to-dir=/home/mikhail/Documents/Library/Fiction \
  --template="{authors}/{series:|(| }{series_index:0>2s| |) }{title}"
