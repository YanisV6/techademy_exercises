--1.Write a PL/SQL block to calculate the incentive of an employee whose ID is 110.

DECLARE
  incentive   NUMBER(8,2);
BEGIN
  SELECT emp_salary * 0.2 INTO incentive
  FROM employees
  WHERE emp_id = 110;
DBMS_OUTPUT.PUT_LINE('Incentive  = ' || TO_CHAR(incentive));
END;
/

--2.Write a PL/SQL block to show an invalid case-insensitive reference to a quoted and without quoted user-defined identifier.
DECLARE
  "WELCOME" varchar2(10) := 'welcome';
BEGIN
  DBMS_Output.Put_Line("Welcome");
END;
/

--3. Write a PL/SQL block to show a reserved word can be used as a user-define identifier.
DECLARE
  "DECLARE" varchar2(25) := 'This is UPPERCASE';
  "Declare" varchar2(25) := 'This is Proper Case';
  "declare" varchar2(25) := 'This is lowercase';
BEGIN
  DBMS_Output.Put_Line("DECLARE");
  DBMS_Output.Put_Line("Declare");
  DBMS_Output.Put_Line("declare");
END;
/

--4. Write a PL/SQL block to show the result to neglect double quotation marks in reserved word identifier.

WORLD is not a reserved word
  "DECLARE" varchar2(20) := 'declare';
BEGIN
  DBMS_Output.Put_Line(World);
  DBMS_Output.Put_Line(DECLARE);
END;
/

--5. Write a PL/SQL block to show the result to neglect the case sensitivity of a user defined identifier which is also a reserved word.

DECLARE
  "WORLD" varchar2(10) := 'world'; 
  "DECLARE" varchar2(10) := 'declare';
BEGIN
  DBMS_Output.Put_Line(World);
  DBMS_Output.Put_Line("Declare");
end;
/

--6. Write a PL/SQL block to explain single and multiline comments.

-- This is a single line comment

 
  /* Multiple line comments are 
  displayed like this*/
 
--7. Write PL/SQL blocks to show the declaration of variables.

DECLARE
  num_var       NUMBER(5);
  product         VARCHAR2(20);
  yesorno          BOOLEAN;
BEGIN
  NULL;
END;
/

--9. Write a PL/SQL block to show a valid case-insensitive reference to a quoted and without quoted user-defined identifier.

DECLARE

  "HELLO" varchar2(15) := 'hello'; 

BEGIN

  DBMS_Output.Put_Line(Hello); 

END;


--16. Write a PL/SQL block to describe the usage of LIKE operator including wildcard characters and escape character.

DECLARE
  PROCEDURE pat_match (
    test_string   VARCHAR2,
    pattern       VARCHAR2
  ) IS
  BEGIN
    IF test_string LIKE pattern THEN
      DBMS_OUTPUT.PUT_LINE ('TRUE');
    ELSE
      DBMS_OUTPUT.PUT_LINE ('FALSE');
    END IF;
  END;
BEGIN
  pat_match('Welcome', 'W%o_e');
  pat_match('Blweate', 'W%O_E');
END;
/

