-- Test file for Question 16

SET SERVEROUTPUT ON;

SPOOL test_output.txt;

BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
/

SPOOL OFF;

-- Verify that the expected numbers are present
HOST grep -q "^1$" test_output.txt
HOST grep -q "^2$" test_output.txt
HOST grep -q "^3$" test_output.txt
HOST grep -q "^4$" test_output.txt
HOST grep -q "^5$" test_output.txt
HOST grep -q "^6$" test_output.txt
HOST grep -q "^7$" test_output.txt
HOST grep -q "^8$" test_output.txt
HOST grep -q "^9$" test_output.txt
HOST grep -q "^10$" test_output.txt

PROMPT Test completed successfully.
