#!/bin/sh -l
set -e

licensebat $* >> $GITHUB_STEP_SUMMARY
exit $?