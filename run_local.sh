#!/usr/bin/env sh

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

bundle exec jekyll serve --config=_config.yml,_config.$lang.yml
