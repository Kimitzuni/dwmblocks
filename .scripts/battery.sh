#!/bin/bash


battery=$(cat /sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0A:00/power_supply/BAT0/capacity) > /dev/null
#battery=15
Full=100
ThreeQuarters=75
Half=50
Quarter=25
Critical=15

(( $battery <= 100 && $battery > $ThreeQuarters )) && echo "  $battery%"
(( $battery <= 75 && $battery > $Half )) && echo "  $battery%"
(( $battery <= 50 && $battery > $Quarter )) && echo "  $battery%"
(( $battery <= 25 && $battery > $Critical )) && echo "  $battery%"
(( $battery <= 15 )) && echo "  $battery%"
