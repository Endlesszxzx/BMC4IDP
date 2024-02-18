source ./test_dir.sh
CBMC=/home/user/桌面/racebench/BMC4IDP_OURTOOL/cmake-build-debug/bin/cbmc
test_num=1
patterns="
spawn_reduction_module
"
#五次测试求平均值
for i in $(seq 1 $test_num)
do
	for name in ${TEST_DIRS}
	do
		cd $name
		for pattern in ${patterns}
		do
   			echo "testing ${name} ${pattern}  $i"
			echo 1 >sudo chmod 666 /proc/sys/vm/drop_caches
			timeout 3600 time $CBMC --mm ${pattern} --trace -unwind 3 $name.c > ${pattern}\($i\).out
		done
		cd ..
	done
done
