#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="build/make/core build/soong hardware/interfaces system/core bionic frameworks/av frameworks/base"

# red + nocolor
RED='\033[0;31m'
NC='\033[0m'


for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo -e "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	#git am $rootdirectory/device/leeco/x3/$dir/*.patch
	git apply -v $rootdirectory/device/leeco/x3/patches/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory
