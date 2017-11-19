echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic build/make/core build/soong frameworks/av frameworks/base hardware/interfaces system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	#git apply --reverse $rootdirectory/device/leeco/x3/patches/$dir/*.patch
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
© 2017 GitHub, Inc.
