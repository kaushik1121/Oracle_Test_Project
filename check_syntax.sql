DECLARE
  ln_number    NUMBER := 100;
  ln_result    VARCHAR2(100) := '';
  ln_result1   NUMBER;
BEGIN
  ln_result := ln_number/0;
  ln_result1 = ln_number/20;
END;
/
