#!/bin/bash
# Sync my-publications.bib from Overleaf repo to website _bibliography/papers.bib
# Jekyll-Scholar requires YAML front matter.
SRC="${HOME}/dev/Overleaf-synced-job-application-packages/job_hunting_packages/my-publications.bib"
DST="$(git rev-parse --show-toplevel)/_bibliography/papers.bib"

if [ ! -f "$SRC" ]; then
  echo "ERROR: Source not found: $SRC" >&2
  exit 1
fi

printf -- '---\n---\n\n' > "$DST"
cat "$SRC" >> "$DST"

echo "Synced: $(grep -c '@' "$DST") entries to $DST"
