# Silent Data Corruption with MOVE CORRESPONDING in COBOL

This repository demonstrates a subtle but potentially harmful error in COBOL involving the `MOVE CORRESPONDING` statement.  When used with data structures having fields with mismatched data types or lengths, it can lead to data corruption without any explicit compiler errors.

The `bug.cob` file shows the problematic code, while `bugSolution.cob` provides a corrected version.

**Problem:** The `MOVE CORRESPONDING` statement doesn't perform type checking and can cause truncation or padding if fields have different lengths or data types.  This may lead to logical errors or data corruption that is difficult to trace.

**Solution:** Explicitly move each field individually to ensure correct data type and length handling.  This adds a little more code but significantly enhances data integrity and makes the code easier to understand and maintain.  Using explicit data type definitions and compiler checks as much as possible is highly recommended.