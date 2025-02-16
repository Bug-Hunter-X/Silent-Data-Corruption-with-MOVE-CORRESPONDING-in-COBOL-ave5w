PROCEDURE DIVISION.

    MOVE WS-RECORD-FIELD1 TO DB-RECORD-FIELD1.
    MOVE WS-RECORD-FIELD2 TO DB-RECORD-FIELD2.
    MOVE WS-RECORD-FIELD3 TO DB-RECORD-FIELD3.
    ...

    *   Explicitly move each field instead of using MOVE CORRESPONDING.
    *   This ensures type safety and avoids silent data corruption.

END PROGRAM.