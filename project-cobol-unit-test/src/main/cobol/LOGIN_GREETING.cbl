      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-NAME PIC X(5).
       01  WS-ADMIN-NAME PIC X(5) VALUE 'ADMIN'.
       01  WS-GREETING-RESULT PIC X(10).
       01  WS-GREETING PIC X(6) VALUE 'HELLO '.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       1000-INPUT-LOGIN.
           DISPLAY 'PLEASE ENTER YOUR NAME'
           ACCEPT WS-NAME.

       2000-COMPUTE-GREETING.
           STRING WS-GREETING WS-NAME INTO WS-GREETING-RESULT END-STRING.
           DISPLAY WS-GREETING-RESULT.

           IF WS-NAME = WS-ADMIN-NAME THEN
               DISPLAY 'HELLO ADMIN'
               DISPLAY ' WELCOME TO YOUR WORLD!'
           ELSE
               DISPLAY 'YOU ARE NOT ADMIN.'
               DISPLAY ' THIS IS SAD :('
           END-IF.

       3000-Nothing.
            DISPLAY 'nothing'.
       END PROGRAM Main.
