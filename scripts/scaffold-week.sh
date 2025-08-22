#!/usr/bin/env bash
set -euo pipefail
WEEK_NUM="${1:-}"
if [[ -z "$WEEK_NUM" ]]; then
  echo "Usage: $0 <week-number"; exit 1
fi
WEEK_DIR="notes/week-$(printf "%02d" "$WEEK_NUM")"
mkdir -p "$WEEK_DIR"

cat > "$WEEK_DIR/00-week-plan.md" <<TPL
# Week $(printf "%02d" "WEEK_NUM") - Plan


## Objectives

-



## Deliverables

-


## Checklist

- [ ]

TPL

for d in 1 2 3 4 5; do
 cat > "$WEEK_DIR/0${d}-day${d}.md" <<TPL
# Week $(printf "%02d" "$WEEK_NUM") - Day ${d}


## What I learned

-


## Hands-on

-


## Notes / Links

-

TPL

done

echo "Scaffolded $WEEK_DIR with daily templates."
