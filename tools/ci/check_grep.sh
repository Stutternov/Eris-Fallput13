#!/bin/bash
set -euo pipefail

#nb: must be bash to support shopt globstar
shopt -s globstar

st=0
testcount=15 # UPDATE WHEN NEW TESTS ARE ADDED/ENABLED
totalcount=0
failedtests=0

echo "Checking for non-TGM formatted maps"
res=$(grep -El '^\".+\" = \(.+\)' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0));    then
    echo "ERROR: ${failcount} non-TGM formatted map(s) detected. Please convert it using Map Merger!"
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for tags in maps"
res=$(grep -P '^\ttag\b' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0));    then
    echo "ERROR: tag vars detected in maps ${failcount} time(s), please remove them."
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for step_x/step_y in maps"
res=$(grep -P '^\tstep_[xy]\b' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0));    then
    echo "ERROR: step_x/step_y variables detected in maps ${failcount} time(s), please remove them."
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for pixel_w/pixel_z in maps"
res=$(grep -P '^\tpixel_[wz]\b' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0));    then
    echo "ERROR: incorrect pixel offset variables detected in maps ${failcount} time(s), please remove them."
    st=1
    failedtests=$(($failedtests + 1))
fi;
# # re-add if smartcables are ported
# echo "Checking for cable varedits"
# res=$(grep -P '/obj/structure/cable(/\w+)+\{' maps/**/*.dmm) || :
# echo "$res"
# failcount=$(echo -n "$res" | wc -l)
# totalcount=$(($totalcount+$failcount))
# if (($failcount > 0));    then
#     echo "ERROR: vareditted cables detected in maps ${failcount} time(s), please remove them."
#     st=1
#     failedtests=$(($failedtests + 1))
# fi;
echo "Checking for vareditted /area paths"
res=$(grep -P '^/area/.+[\{]' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0));    then
    echo "ERROR: Vareditted /area path use detected in maps ${failcount} time(s), please replace with proper paths."
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for base /turf path in maps"
res=$(grep -P '\W\/turf\s*[,\){]' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "ERROR: base /turf path use detected in maps ${failcount} time(s), please replace with proper paths."
    st=1
    failedtests=$(($failedtests + 1))
fi;
res=$(grep -P '^/*var/' code/**/*.dm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "ERROR: Unmanaged global var use detected ${failcount} time(s) in code, please use the helpers."
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for space indentation"
res=$(grep -P '(^ {2})|(^ [^ * ])|(^    +)' code/**/*.dm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "space indentation detected ${failcount} time(s)"
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for mixed indentation"
res=$(grep -P '^\t+ [^ *]' code/**/*.dm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "mixed <tab><space> indentation detected ${failcount} time(s)"
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for missing trailing newlines"
res=$(grep -PLz '\n\Z' code/**/*.dm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "${failcount} file(s) missing a trailing newline"
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for var/ in proc arguments"
res=$(grep -P '^/[\w/]\S+\(.*(var/|, ?var/.*).*\)' code/**/*.dm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "changed files contains proc argument starting with 'var' ${failcount} time(s)"
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for Vault-Tec misspellings"
res=$(grep -i 'vault[\s-]?tek' code/**/*.dm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "ERROR: Misspelling(s) of Vault-Tec detected in code ${failcount} time(s), please replace the K with a C."
    st=1
    failedtests=$(($failedtests + 1))
fi;
res=$(grep -i 'vault[\s-]?tek' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "ERROR: Misspelling(s) of Vault-Tec detected in maps ${failcount} time(s), please replace the K with a C."
    st=1
    failedtests=$(($failedtests + 1))
fi;
echo "Checking for light/light_sources in maps"
res=$(grep -i '^\t(light|light_sources) = ' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "ERROR: var/light or var/light_sources set in maps ${failcount} time(s), please remove them."
    st=1
    failedtests=$(($failedtests + 1))
fi;
res=$(grep -i '/obj/effect/mapping_helpers/custom_icon' maps/**/*.dmm) || :
echo "$res"
failcount=$(echo -n "$res" | wc -l)
totalcount=$(($totalcount+$failcount))
if (($failcount > 0)); then
    echo "Custom icon helper found ${failcount} time(s). Please include dmis as standard assets instead for built-in maps."
    st=1
    failedtests=$(($failedtests + 1))
fi;

echo "${failedtests}/${testcount} tests failed"
echo "${totalcount} failures total"

exit $st
