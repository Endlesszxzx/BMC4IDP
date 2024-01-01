source ./test.sh
CBMC_debug=/home/user/桌面/BMC4IDP/BMC4IDP-Ourtool/cmake-build/bin/cbmc
test_num=1
patterns="
precise_simplest_module
begin_and_end_module
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
			timeout 3600 time $CBMC_debug --unwind 200 --mm ${pattern} --trace $name.c > ${pattern}\($i\).out
		done
		cd ..
	done
done
