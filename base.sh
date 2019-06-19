git init .
git config --local alias.c "commit --allow-empty -m"
git config --local alias.m "merge --no-ff --commit -m"
git config --local alias.b "checkout -b"

git add .
git c "quit"

git c "92 put 34 put 34 put 10 put"
#print the closing \""\n for the final commit to master containing
#the data in its message

git b PRINT
git c "put [PLOOP_THREE]"
git b ESCAPE
git c "\"\\\\\" dup dup put put put"

git b ESCAPE_LF master
git c "pop \"n\\\\\" dup put put put [PLOOP_THREE]"
#special case to escape LF with \\n instead of \\\LF

git checkout PRINT
git c "dup pop" #no-op workaround to avoid the next commit being "Already up-to-date."

git b EQ_SLASH ESCAPE
git m "dup 92 sub" PRINT
git b EQ_QUOTE ESCAPE
git m "dup 34 sub" EQ_SLASH
git b EQ_LF ESCAPE_LF
git m "dup 10 cmp" EQ_QUOTE
git checkout master
git m "dup" EQ_LF
git tag "PLOOP_THREE"
#print each character on the stack, taking care to escape LF, " and \

git c "pop"
git b CONTINUE_READ_LOOP
git c "[READLOOP]"
git checkout master
git m "1 left read dup" CONTINUE_READ_LOOP
git tag READLOOP
#read the tape onto the stack (right-to-left)

git b CONTINUE_PRINT_LOOP_2
git c "[PLOOP_TWO]"
git checkout master
git m "put dup" CONTINUE_PRINT_LOOP_2
git tag PLOOP_TWO
git c "34 92 34 \" c tig\""
#print 'git c "\"'

git b CONTINUE_PRINT_LOOP_ONE
git c "put [PLOOP_ONE]"
git checkout master
git m "1 right read dup" CONTINUE_PRINT_LOOP_ONE
git tag PLOOP_ONE
#print contents of tape (left-to-right)

git b CONTINUE_REVERSE_LOOP
git c "write 1 left [REVERSELOOP]"
git checkout master
git m "dup" CONTINUE_REVERSE_LOOP
git tag REVERSELOOP
#Fill the tape (right-to-left) with data from the stack

#Payload goes here
