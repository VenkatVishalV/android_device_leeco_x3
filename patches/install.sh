echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic build/maake/core build/soong frameworks/av frameworks/base hardware/interfaces system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo "Applying $dir patches..."
	git apply -v $rootdirectory/device/leeco/x3/patches/$dir/*.patch
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
