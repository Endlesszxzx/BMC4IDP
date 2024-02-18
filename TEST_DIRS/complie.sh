source ./test_dir.sh
#五次测试求平均值
for i in $(seq 1 $test_num)
do
	for name in ${TEST_DIRS}
	do
		cd $name
gcc -E -P  $name.c -o $name.i
		cd ..
	done
done
