PRJDIR=$(dirname $0)

west -v build -d build_m33_hard_lwchar -b nrf5340dk_nrf5340_cpuapp $PRJDIR -- -DCONF_FILE='prj.conf' 
west -v build -d build_m33_hard_swchar -b nrf5340dk_nrf5340_cpuapp $PRJDIR -- -DCONF_FILE='prj.conf                         overlay-fshort-wchar.conf'
west -v build -d build_m33_soft_lwchar -b nrf5340dk_nrf5340_cpuapp $PRJDIR -- -DCONF_FILE='prj.conf overlay-soft-float.conf' 
west -v build -d build_m33_soft_swchar -b nrf5340dk_nrf5340_cpuapp $PRJDIR -- -DCONF_FILE='prj.conf overlay-soft-float.conf overlay-fshort-wchar.conf' 
west -v build -d build_m4_hard_lwchar  -b nrf52840dk_nrf52840      $PRJDIR -- -DCONF_FILE='prj.conf' 
west -v build -d build_m4_hard_swchar  -b nrf52840dk_nrf52840      $PRJDIR -- -DCONF_FILE='prj.conf                         overlay-fshort-wchar.conf' 
west -v build -d build_m4_soft_lwchar  -b nrf52840dk_nrf52840      $PRJDIR -- -DCONF_FILE='prj.conf overlay-soft-float.conf' 
west -v build -d build_m4_soft_swchar  -b nrf52840dk_nrf52840      $PRJDIR -- -DCONF_FILE='prj.conf overlay-soft-float.conf overlay-fshort-wchar.conf' 

