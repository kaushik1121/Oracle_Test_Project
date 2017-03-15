DECLARE
  c INTEGER;
  sqltext VARCHAR2(100) := 'ALTER USER system IDENTIFIED BY password_1';
BEGIN
  c := SYS.DBMS_SYS_SQL.OPEN_CURSOR();                               

   -- Will change 'system' user's password to 'password_1'
  SYS.DBMS_SYS_SQL.PARSE_AS_USER(c, sqltext, DBMS_SQL.NATIVE, UID);  

  SYS.DBMS_SYS_SQL.CLOSE_CURSOR(c);                                  
END;
/
