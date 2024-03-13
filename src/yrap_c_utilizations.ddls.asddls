@EndUserText.label: 'Consumption view Entity for Utilizations'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YRAP_C_UTILIZATIONS
  as projection on YRAP_I_UTILIZATIONS
{
      @EndUserText.label: 'UUID'
  key Uuid,
      @EndUserText.label: 'Utilization ID'
  key    Utid,
      @UI.hidden: true
      Mid,
      @UI.hidden: true
      Eid,
      @UI.hidden: true
      Pid,
      @EndUserText.label: 'Utilization(%)'
      UtilizePer,
      @EndUserText.label: 'Remarks(if any)'
      Remarks,
      /* Associations */
      _Employee : redirected to parent YRAP_C_EMPLOYEE,
      _Modules  : redirected to YRAP_C_Modules
}
