#!/usr/bin/env bash

usage() {
    echo>&2 "Usage: $0 {lang (nl|fr)}"
}

[ $# -ne 1 ] && { usage; exit 1; }
lang="$1"; shift
case "$lang" in
    fr) ;;
    nl) ;;
    *)  usage; exit 1;;
esac

options=()
options+=(--config=_config.yml,_config.$lang.yml)
# options+=(--incremental)  # Does not detect changes properly when switching language
options+=(--livereload)
# options+=(--watch)
options+=(--force_polling)  # Because of https://github.com/microsoft/WSL/issues/216

(set -x; bundle exec jekyll serve "${options[@]}")
