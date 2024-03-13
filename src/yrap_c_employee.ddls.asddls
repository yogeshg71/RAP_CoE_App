@EndUserText.label: 'Consumption view Entity for Employees'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YRAP_C_EMPLOYEE
  as projection on YRAP_I_EMPLOYEE
{
      @EndUserText.label: 'UUID'
  key Uuid,
      @EndUserText.label: 'Employee ID'
  key Eid,
      @UI.hidden: true
      Mid,
      @UI.hidden: true
      Pid,
      @UI.hidden: true
      Sid,
      @UI.hidden: true
      Cid,
      @UI.hidden: true
      Utid,
      @EndUserText.label: 'Employee Name'
      Name,
      @EndUserText.label: 'Employee Status'
      Status,
      @EndUserText.label: 'Designation'
      Designation,
      @EndUserText.label: 'E-Mail ID'
      Email,
      @EndUserText.label: 'Department'
      Dept,
      @EndUserText.label: 'Contact'
      Contact,
      @EndUserText.label: 'Address'
      Address,
      @EndUserText.label: 'City'
      City,
      @EndUserText.label: 'Postal Code'
      PostCode,
      @EndUserText.label: 'Country'
      Country,
      /* Associations */
      _Certifications : redirected to composition child YRAP_C_CERTIFICATIONS,
      _Module         : redirected to parent YRAP_C_Modules,
      _Skills         : redirected to composition child YRAP_C_SKILLS,
      _Utilizations   : redirected to composition child YRAP_C_UTILIZATIONS
}
