      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FullTested.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-NAME PIC X(4).
       01  WS-SALUTE PIC X(10).
       01  WS-GREETING PIC X(6) VALUE 'HELLO '.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       2000-COMPUTE-GREETING.
       *> This file is 100% tested
           STRING WS-GREETING WS-NAME INTO WS-SALUTE END-STRING.
           DISPLAY WS-SALUTE.
           DISPLAY '100% covered ^^'.
       END PROGRAM FullTested.
