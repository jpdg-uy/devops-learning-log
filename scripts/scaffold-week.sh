#!/usr/bin/env bash
set -euo pipefail

WEEK_NUM="${1:-}"

# Validate input is an integer like 2, 03, 12, etc.
if ! [[ "$WEEK_NUM" =~ ^[0-9]+$ ]]; then
  echo "Usage: $0 <week-number (integer)>"
  exit 1
fi

WEEK_PADDED="$(printf "%02d" "$WEEK_NUM")"
WEEK_DIR="notes/week-${WEEK_PADDED}"
mkdir -p "$WEEK_DIR"

cat > "$WEEK_DIR/00-week-plan.md" <<TPL
# Week ${WEEK_PADDED} – Plan

## Objectives
- 

## Deliverables
- 

## Checklist
- [ ] 
TPL

cat > "$WEEK_DIR/week-summary.md" <<TPL
# Week ${WEEK_PADDED} – Summary

## What I learned
- 

## Hands-on
- 

## Notes / Links
- 
TPL

echo "Scaffolded ${WEEK_DIR} (plan + summary)."
