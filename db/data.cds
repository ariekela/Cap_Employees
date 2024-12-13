namespace sap.cap;

using { cuid, managed } from '@sap/cds/common';

entity emplyoees_registry : cuid,managed {   
  emp_name  : String(255);
  emp_email : String(255);
  emp_dept : Association to one department;
}


entity department : cuid,managed { 
 dept_name : String(255);
 employees :  Association to many emplyoees_registry on employees.emp_dept = $self;
  
}


