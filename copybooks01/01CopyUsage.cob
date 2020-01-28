      * MIT License
      * Copyright (c) 2020 Miro Wengner
      *
       identification division.
       program-id. 01CopyUsage.
       author. Miro Wengner

       environment division.

       data division.
       working-storage section.
       01 STD-REC.
           COPY 'stdrecd.cpy'.
           COPY 'stdrecw.cpy'.
       
       01 WS-DESCRIPTION.
           05 WS-DATE1 VALUE '20200128'.
               10 WS-YEAR              PIC X(4).
               10 WS-MONTH             PIC X(2).
               10 WS-DATE              PIC X(2).
           05 WS-DATE2 REDEFINES WS-DATE1 
                                       PIC 9(8).
       
       01 WS-SAMPLE.
           05  WS-SAMPLE-NUM1          PIC X(5).
           05  WS-SAMPLE-NUM2 REDEFINES WS-SAMPLE-NUM1 
                                       PIC 9(3)v9(2).
           05  WS-NUMBER.
               10 WS-NUMBER-1          PIC 9(5)    VALUE 12345.
           05  WS-CARACTERS            PIC X(5)    VALUE 'ABCDE'.
           66  WS-RENAME  RENAMES WS-NUMBER-1 THRU WS-CARACTERS.           

       procedure division.
       main section.
           MOVE '1' TO STD-NUM OF STD-REC.
           MOVE 'SOME' TO STD-NAME  OF STD-REC.
           MOVE '22'   TO STD-PERCENT OF STD-REC.
           MOVE 'COM'  TO STD-COMMENT OF STD-REC.
           MOVE '1.22' TO WS-SAMPLE-NUM2 OF WS-SAMPLE.

           display "COBOL-Programm"
           display 'Record DETAILS:' STD-REC.
           display 'DATE1: ' WS-DATE1.
           display 'DATE2: ' WS-DATE2.
           display 'SAMPLE NUMBER:' WS-SAMPLE-NUM1.
           display 'WS-RENAME:' WS-RENAME;
           stop run
           .
