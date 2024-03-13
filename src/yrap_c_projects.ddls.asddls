@EndUserText.label: 'Consumption view Entity for Projects'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YRAP_C_PROJECTS
  as projection on YRAP_I_Projects
{
      @EndUserText.label: 'UUID'
  key Uuid,
      @EndUserText.label: 'Project ID'
  key    Pid,
      Mid,
      Eid,
      Utid,
      @EndUserText.label: 'Project Name'
      Name,
      @EndUserText.label: 'Project Description'
      Descr,
      /* Associations */
      _Employees,
      _Modules : redirected to parent YRAP_C_Modules
}
