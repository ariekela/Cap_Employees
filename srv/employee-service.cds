
using  sap.cap as my from '../db/data';

service employeeServices {

entity  Employees @(
    Capabilities: {
InsertRestrictions : {
    $Type : 'Capabilities.InsertRestrictionsType',
    Insertable
    
},
 UpdateRestrictions : {
     $Type : 'Capabilities.UpdateRestrictionsType',
     Updatable
 },

 DeleteRestrictions : {
     $Type : 'Capabilities.DeleteRestrictionsType',
     Deletable
 }
    },
)
    
 as select from my.emplyoees_registry;

@readonly entity Department as select from my.department;    

}