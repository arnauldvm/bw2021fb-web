#!/usr/bin/env bash

cd "$(dirname "$0")"

sed -i '/<!-- START -->/q' BACKLOG.md

cat >> BACKLOG.md <<EOF
| File | Task |
|:---- |:---- |
EOF
egrep -r --exclude '*LOG.md' --exclude-dir '.git*' '[T]ODO|[T]BC' . \
| sed -r '
    s/^([^:]+):/| [`\1`](\1) | « /
    s/\{%-? comment -?%\}/ »<br>/
    s/\{%-? endcomment -?%\}/<br>/
    s/( \| )« \s* »<br>/\1/
    s/<br>(\s*)$/\1/
    s/([T]ODO)/<span style="background-color:cornsilk">**\1**/
    s/([T]BC)/<span style="background-color:peachpuff">**\1**/
    s/$/<\/span> |/
    ' \
>> BACKLOG.md
