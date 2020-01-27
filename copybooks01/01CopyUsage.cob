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

       procedure division.
       main section.
           MOVE '1' TO STD-NUM OF STD-REC.
           MOVE 'SOME' TO STD-NAME  OF STD-REC.
           MOVE '22'   TO STD-PERCENT OF STD-REC.
           MOVE 'COM'  TO STD-COMMENT OF STD-REC.
           display "COBOL-Programm"
           display 'Record DETAILS:' STD-REC.
           stop run
           .
