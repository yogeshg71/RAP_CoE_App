@EndUserText.label: 'Consumption view Entity for Skills'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YRAP_C_SKILLS
  as projection on YRAP_I_SKILLS
{
      @EndUserText.label: 'UUID'
  key Uuid,
      @EndUserText.label: 'Skill ID'
  key   Sid,
      @UI.hidden: true
      Mid,
      @UI.hidden: true
      Eid,
      @EndUserText.label: 'Skill SubID'
      Subid,
      @EndUserText.label: 'Skill Name'
      Name,
      @EndUserText.label: 'Skill Description'
      Descr,
      @EndUserText.label: 'Skill Level'
      Levl,
      /* Associations */
      _Employee : redirected to parent YRAP_C_EMPLOYEE,
      _Modules  : redirected to YRAP_C_Modules

}
