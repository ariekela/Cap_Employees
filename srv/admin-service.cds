using  sap.cap as my from '../db/data';
service AdminService @(requires:'authenticated-user') { 
  entity Employees as projection on my.emplyoees_registry;
  entity Department as projection on my.department;
}