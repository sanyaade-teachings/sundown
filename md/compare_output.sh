#!/bin/bash
# run ./testjs.sh to generate test.js with embedded test files.

echo "Comparing 0"
diff <( node test.js 0.md ) <( ./test 0.md )
echo "Comparing 1"
diff <( node test.js 1.md ) <( ./test 1.md )
echo "Comparing 2"
diff <( node test.js 2.md ) <( ./test 2.md )
echo "Comparing 3"
diff <( node test.js 3.md ) <( ./test 3.md )

# ){j=k=ld(a+1|0,j
#      ^
# TypeError: undefined is not a function

