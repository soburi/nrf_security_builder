PRJDIR=$(dirname $0)

declare -A cores=(
                   ["cortex-m4"]='nrf52840dk_nrf52840'
                   ["cortex-m33"]='nrf5340dk_nrf5340_cpuapp'
)
declare -A abis=(
                   ["hard-float"]='prj.conf overlay-hard-float.conf'
       ["hard-float/short-wchar"]='prj.conf overlay-soft-float.conf overlay-fshort-wchar.conf'
                   ["soft-float"]='prj.conf overlay-hard-float.conf'
       ["soft-float/short-wchar"]='prj.conf overlay-soft-float.conf overlay-fshort-wchar.conf'
)

for C in "${!cores[@]}" ; do
	for A in "${!abis[@]}" ; do 
		mkdir -p build/${C}/${A}
		mkdir -p lib/${C}/${A}
		west -v build -d build/${C}/${A} -b ${cores[${C}]} $PRJDIR -- -DCONF_FILE="${abis[${A}]}"
		cp `find build/${C}/${A}/modules/nrfxlib/nrfxlib/ -name '*.a'` lib/${C}/${A}/
	done
done
