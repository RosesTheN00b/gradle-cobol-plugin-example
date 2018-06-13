           TESTSUITE 'Test compute greeting'

           TESTCASE 'Test with Hans'
           MOVE 'Hans' TO WS-NAME
           PERFORM 2000-COMPUTE-GREETING
           EXPECT WS-GREETING-RESULT TO BE 'HELLO Hans'


           TESTCASE 'Test with Marc'
           MOVE 'Marc' TO WS-NAME
           PERFORM 2000-COMPUTE-GREETING
           EXPECT WS-GREETING-RESULT TO BE 'HELLO Marc'


