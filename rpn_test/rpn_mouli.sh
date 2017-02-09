gcc -Wall -Wextra -Werror rpn_calc/*.c -I./rpn_calc -o rpn
ls test* | grep -v "\." | xargs rm
touch test1 && ./rpn | cat -e >> test1
echo "\
=========================================================================
Test 1:./rpn | cat -e"
DIFF=$(diff answers/answer1 test1) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 0 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test2 && ./rpn "2 3 -" "5 6 +" | cat -e >> test2
echo "\
=========================================================================
Test 2:./rpn \"2 3 -\" \"5 6 +\" | cat -e"
DIFF=$(diff answers/answer2 test2) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 1 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test3 && ./rpn "2 -" | cat -e >> test3
echo "\
=========================================================================
Test 3:./rpn \"2 -\" | cat -e"
DIFF=$(diff answers/answer3 test3) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 2 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test4 && ./rpn "-" | cat -e >> test4
echo "\
=========================================================================
Test 4:./rpn \"-\" | cat -e"
DIFF=$(diff answers/answer4 test4) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 3 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test5 && ./rpn "2 5 6 -" | cat -e >> test5
echo "\
=========================================================================
Test 5:./rpn \"2 5 6 -\" | cat -e"
DIFF=$(diff answers/answer5 test5) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 4 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test6 && ./rpn "3 4 +" | cat -e >> test6
echo "\
=========================================================================
Test 6:.rpn \"3 4 +\" | cat -e"
DIFF=$(diff answers/answer6 test6) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 5 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test7 && ./rpn "2 4 + 8 *" | cat -e >> test7
echo "\
=========================================================================
Test 7:./rpn \"2 4 + 8 *\" | cat -e"
DIFF=$(diff answers/answer7 test7) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 6 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test8 && ./rpn "50 10 25 + -" | cat -e >> test8
echo "\
=========================================================================
Test 8:./rpn \"50 10 25 + -\" | cat -e"
DIFF=$(diff answers/answer8 test8) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 7 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test9 && ./rpn "1000 5 2 * /" | cat -e >> test9
echo "\
=========================================================================
Test 9:./rpn \"1000 5 2 * /\" | cat -e"
DIFF=$(diff answers/answer9 test9) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 8 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test10 && ./rpn "1000 3 %" | cat -e > test10
echo "\
=========================================================================
Test 10:./rpn \"1000 3 %\" | cat -e"
DIFF=$(diff answers/answer10 test10) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 9 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test11 && ./rpn "1000 0 /" | cat -e >& test11
echo "\
=========================================================================
Test 11:./rpn \"1000 0 /\" | cat -e"
DIFF=$(diff answers/answer11 test11)
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 10 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test12 && ./rpn "1000 0 %" | cat -e >> test12
echo "\
=========================================================================
Test 12:./rpn \"1000 0 %\" | cat -e"
DIFF=$(diff answers/answer12 test12) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 11 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test13 && ./rpn "-1000 -1 *" | cat -e >> test13
echo "\
=========================================================================
Test 13:./rpn \"-1000 -1 *\" | cat -e"
DIFF=$(diff answers/answer13 test13) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 12 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
echo "\
=========================================================================
Test 14:./rpn \"-111 45 123 * 26 73 + + - 78 * -85 / 123 -\" | cat -e"
touch test14 && ./rpn "-111 45 123 * 26 73 + + - 78 * -85 / 123 -" | cat -e >> test14
DIFF=$(diff answers/answer14 test14) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 13 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
touch test15 && ./rpn "78 326 542 96 1452 36 965 % - * / - +" | cat -e >> test15
echo "\
=========================================================================
Test 15:./rpn \"78 326 542 96 1452 36 965 % - * / - +\" | cat -e"
DIFF=$(diff answers/answer15 test15) 
if [ "$DIFF" != "" ] 
then
	echo "$DIFF\n
Passed 14 of 15 tests-->Result: FAIL"
	rm test* rpn
	exit 1
else
	echo "\nOK :D"
fi
echo "Passed 15 of 15 tests-->Result: PASS"
rm test*
