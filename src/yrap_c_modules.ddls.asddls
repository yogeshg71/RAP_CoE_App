@EndUserText.label: 'Consumption View Entity for Modules'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity YRAP_C_Modules as projection on YRAP_R_MODULES
{
@EndUserText.label: 'UUID'
    key Uuid,
@EndUserText.label: 'Module ID'    
    key Mid,
    Pid,
    Eid,
    Sid,
    Cid,
@EndUserText.label: 'Module Name'    
    Name,
@EndUserText.label: 'Module Description'    
    Descr,
    /* Associations */
    _Employees : redirected to composition child YRAP_C_EMPLOYEE,
    _Projects : redirected to composition child YRAP_C_PROJECTS
}
