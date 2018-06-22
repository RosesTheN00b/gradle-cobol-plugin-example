           TESTSUITE 'Compute greeting. 100% Coverage'

           TESTCASE 'TEST WITH HANS'
           MOVE 'Hans' TO WS-NAME
           PERFORM 2000-COMPUTE-GREETING
           EXPECT WS-SALUTE TO BE 'HELLO Hans'
