      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CFile.
       DATA DIVISION.
       LINKAGE SECTION.
       01  WS-SALUTE PIC X(10).

       PROCEDURE DIVISION USING WS-SALUTE.
       *> This file is 100% tested
           DISPLAY WS-SALUTE.
           DISPLAY '100% covered ^^'.
       END PROGRAM CFile.
