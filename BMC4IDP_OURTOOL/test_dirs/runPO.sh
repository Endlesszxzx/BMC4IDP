source ./test_dir.sh
CBMC=/home/liu-ye-ye/桌面/project/icbmc-wyb/cmake-build-debug/bin/cbmc
for name in ${PO_DIFF_DIR}
do
	echo "testing all $name"
	cd $name
	timeout 3600 time $CBMC --mm all_module --trace $name.c > irq_all.out
	cd ..
done
