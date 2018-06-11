      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOGIN.
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
       *> Read username from console
           DISPLAY 'PLEASE ENTER YOUR NAME'
           ACCEPT WS-NAME.

       2000-COMPUTE-GREETING.
       *> Greet user
           STRING WS-GREETING WS-NAME INTO WS-GREETING-RESULT END-STRING.
           DISPLAY 'HELLO USER!'
           DISPLAY 'HERE IST YOUR GREETING:'
           DISPLAY WS-GREETING-RESULT.
           DISPLAY ' '

           IF WS-NAME = WS-ADMIN-NAME THEN
               DISPLAY 'HELLO ADMIN'
               DISPLAY ' WELCOME TO YOUR WORLD!'
           ELSE
               DISPLAY 'YOU ARE NOT ADMIN.'
               DISPLAY ' THIS IS SAD :('
           END-IF.

           DISPLAY 'HAVE FUN!'.

       3000-NOTHING-AND-EXIT.
       *> Nothing
           DISPLAY 'NOTHING'
       *> Exit
           DISPLAY 'PROGRAMM WILL EXIT HERE'.

       END PROGRAM LOGIN.
