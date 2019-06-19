git init .
git config --local alias.c "commit --allow-empty -m"
git config --local alias.m "merge --no-ff --commit -m"
git config --local alias.b "checkout -b"
git add .
git c "quit"
git c "92 put 34 put 34 put 10 put"
git b PRINT
git c "put [PLOOP_THREE]"
git b ESCAPE
git c "\"\\\\\" dup dup put put put"
git b ESCAPE_LF master
git c "pop \"n\\\\\" dup put put put [PLOOP_THREE]"
git checkout PRINT
git c "dup pop" 
git b EQ_SLASH ESCAPE
git m "dup 92 sub" PRINT
git b EQ_QUOTE ESCAPE
git m "dup 34 sub" EQ_SLASH
git b EQ_LF ESCAPE_LF
git m "dup 10 cmp" EQ_QUOTE
git checkout master
git m "dup" EQ_LF
git tag "PLOOP_THREE"
git c "pop"
git b CONTINUE_READ_LOOP
git c "[READLOOP]"
git checkout master
git m "1 left read dup" CONTINUE_READ_LOOP
git tag READLOOP
git b CONTINUE_PRINT_LOOP_2
git c "[PLOOP_TWO]"
git checkout master
git m "put dup" CONTINUE_PRINT_LOOP_2
git tag PLOOP_TWO
git c "34 92 34 \" c tig\""
git b CONTINUE_PRINT_LOOP_ONE
git c "put [PLOOP_ONE]"
git checkout master
git m "1 right read dup" CONTINUE_PRINT_LOOP_ONE
git tag PLOOP_ONE
git b CONTINUE_REVERSE_LOOP
git c "write 1 left [REVERSELOOP]"
git checkout master
git m "dup" CONTINUE_REVERSE_LOOP
git tag REVERSELOOP
git c "\"git init .\\ngit config --local alias.c \\\"commit --allow-empty -m\\\"\\ngit config --local alias.m \\\"merge --no-ff --commit -m\\\"\\ngit config --local alias.b \\\"checkout -b\\\"\\ngit add .\\ngit c \\\"quit\\\"\\ngit c \\\"92 put 34 put 34 put 10 put\\\"\\ngit b PRINT\\ngit c \\\"put [PLOOP_THREE]\\\"\\ngit b ESCAPE\\ngit c \\\"\\\\\\\"\\\\\\\\\\\\\\\\\\\\\\\" dup dup put put put\\\"\\ngit b ESCAPE_LF master\\ngit c \\\"pop \\\\\\\"n\\\\\\\\\\\\\\\\\\\\\\\" dup put put put [PLOOP_THREE]\\\"\\ngit checkout PRINT\\ngit c \\\"dup pop\\\" \\ngit b EQ_SLASH ESCAPE\\ngit m \\\"dup 92 sub\\\" PRINT\\ngit b EQ_QUOTE ESCAPE\\ngit m \\\"dup 34 sub\\\" EQ_SLASH\\ngit b EQ_LF ESCAPE_LF\\ngit m \\\"dup 10 cmp\\\" EQ_QUOTE\\ngit checkout master\\ngit m \\\"dup\\\" EQ_LF\\ngit tag \\\"PLOOP_THREE\\\"\\ngit c \\\"pop\\\"\\ngit b CONTINUE_READ_LOOP\\ngit c \\\"[READLOOP]\\\"\\ngit checkout master\\ngit m \\\"1 left read dup\\\" CONTINUE_READ_LOOP\\ngit tag READLOOP\\ngit b CONTINUE_PRINT_LOOP_2\\ngit c \\\"[PLOOP_TWO]\\\"\\ngit checkout master\\ngit m \\\"put dup\\\" CONTINUE_PRINT_LOOP_2\\ngit tag PLOOP_TWO\\ngit c \\\"34 92 34 \\\\\\\" c tig\\\\\\\"\\\"\\ngit b CONTINUE_PRINT_LOOP_ONE\\ngit c \\\"put [PLOOP_ONE]\\\"\\ngit checkout master\\ngit m \\\"1 right read dup\\\" CONTINUE_PRINT_LOOP_ONE\\ngit tag PLOOP_ONE\\ngit b CONTINUE_REVERSE_LOOP\\ngit c \\\"write 1 left [REVERSELOOP]\\\"\\ngit checkout master\\ngit m \\\"dup\\\" CONTINUE_REVERSE_LOOP\\ngit tag REVERSELOOP\\n\""
