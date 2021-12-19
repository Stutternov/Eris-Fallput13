#!/bin/bash
set -euo pipefail

#nb: must be bash to support shopt globstar
shopt -s globstar

st=0

echo "Checking for non-TGM formatted maps"
if grep -El '^\".+\" = \(.+\)' maps/**/*.dmm;	then
    echo "ERROR: Non-TGM formatted map detected. Please convert it using Map Merger!"
    ++st
fi;
echo "Checking for tags in maps"
if grep -P '^\ttag = ' maps/**/*.dmm;	then
    echo "ERROR: tag vars detected in maps, please remove them."
    ++st
fi;
echo "Checking for step_x/step_y in maps"
if grep -P '^\tstep_[xy]\b' maps/**/*.dmm;	then
    echo "ERROR: step_x/step_y variables detected in maps, please remove them."
    ++st
fi;
echo "Checking for pixel_w/pixel_z in maps"
if grep -P '^\tpixel_[wz]\b' maps/**/*.dmm;	then
    echo "ERROR: incorrect pixel offset variables detected in maps, please remove them."
    ++st
fi;
echo "Checking for cable varedits"
if grep -P '/obj/structure/cable(/\w+)+\{' maps/**/*.dmm;	then
    echo "ERROR: vareditted cables detected, please remove them."
    ++st
fi;
echo "Checking for stacked cables"
if grep -P '"\w+" = \(\n([^)]+\n)*/obj/structure/cable,\n([^)]+\n)*/obj/structure/cable,\n([^)]+\n)*/area/.+\)' _maps/**/*.dmm;	then
    echo "found multiple cables on the same tile, please remove them."
    ++st
fi;
echo "Checking for vareditted /area paths"
if grep -P '^/area/.+[\{]' maps/**/*.dmm;	then
    echo "ERROR: Vareditted /area path use detected in maps, please replace with proper paths."
    ++st
fi;
echo "Checking for base /turf path in maps"
if grep -P '\W\/turf\s*[,\){]' maps/**/*.dmm; then
    echo "ERROR: base /turf path use detected in maps, please replace with proper paths."
    ++st
fi;
if grep -P '^/*var/' code/**/*.dm; then
    echo "ERROR: Unmanaged global var use detected in code, please use the helpers."
    ++st
fi;
echo "Checking for space indentation"
if grep -P '(^ {2})|(^ [^ * ])|(^    +)' code/**/*.dm; then
    echo "space indentation detected"
    ++st
fi;
echo "Checking for mixed indentation"
if grep -P '^\t+ [^ *]' code/**/*.dm; then
    echo "mixed <tab><space> indentation detected"
    ++st
fi;
echo "Checking for missing trailing newlines"
nl='
'
nl=$'\n'
while read f; do
    t=$(tail -c2 "$f"; printf x); r1="${nl}$"; r2="${nl}${r1}"
    if [[ ! ${t%x} =~ $r1 ]]; then
        echo "file $f is missing a trailing newline"
        ++st
    fi;
done < <(find . -type f -name '*.dm')
echo "Checking for var/ in proc arguments"
if grep -P '^/[\w/]\S+\(.*(var/|, ?var/.*).*\)' code/**/*.dm; then
    echo "changed files contains proc argument starting with 'var'"
    ++st
fi;
echo "Checking for Vault-Tec misspellings"
if grep -i 'vault[\s-]?tek' code/**/*.dm; then
    echo "ERROR: Misspelling(s) of Vault-Tec detected in code, please replace the K with a C."
    ++st
fi;
if grep -i 'vault[\s-]?tek' _maps/**/*.dmm; then
    echo "ERROR: Misspelling(s) of Vault-Tec detected in maps, please replace the K with a C."
    ++st
fi;
echo "Checking for light/light_sources in maps"
if grep -i '^\t(light|light_sources) = ' _maps/**/*.dmm; then
	echo "ERROR: var/light or var/light_sources set in maps, please remove them."
	++st
fi;
if grep -i '/obj/effect/mapping_helpers/custom_icon' maps/**/*.dmm; then
    echo "Custom icon helper found. Please include dmis as standard assets instead for built-in maps."
    ++st
fi;

echo "${st} test(s) failed"

exit ($st > 0)
