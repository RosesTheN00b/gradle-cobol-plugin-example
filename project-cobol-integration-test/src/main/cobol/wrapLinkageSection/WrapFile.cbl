      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. WrapFile.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-SALUTE PIC X(10) VALUE 'HELLO HANS'.
       PROCEDURE DIVISION.
       2000-SALUTE.
           DISPLAY '100% covered ^^'.
           CALL "CFile" USING WS-SALUTE.
       END PROGRAM WrapFile.
