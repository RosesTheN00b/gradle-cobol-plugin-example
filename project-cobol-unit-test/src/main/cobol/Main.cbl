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
       01  WS-NAME PIC X(4).
       01  WS-GREETING-RESULT PIC X(10).
       01  WS-GREETING PIC X(6) VALUE 'HELLO '.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       2000-COMPUTE-GREETING.
            STRING WS-GREETING WS-NAME INTO WS-GREETING-RESULT
            END-STRING.
            DISPLAY WS-GREETING-RESULT.
       3000-Nothing.
            DISPLAY 'nothing'.
       END PROGRAM Main.
