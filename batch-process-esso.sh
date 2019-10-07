#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    FILE_NAME="$(basename "${f}")"
    WORD_COUNT="$(wc -w "${f}" | cut -d' ' -f1)"
    FILE_SIZE="$(du -sh "${f}" | cut -f1)"	
    echo "Processing $f file..."
    echo "File name: $FILE_NAME"	
    echo "File size: $FILE_SIZE"
    echo "Word Count: $WORD_COUNT"
  fi
done


