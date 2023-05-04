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

bundle exec jekyll serve "${options[@]}"
