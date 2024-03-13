@EndUserText.label: 'Consumption view Entity for Certifications'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YRAP_C_CERTIFICATIONS
  as projection on YRAP_I_CERTIFICATIONS
{
         @EndUserText.label: 'UUID'
  key    Uuid,
         @EndUserText.label: 'Certification ID'
  key    Cid,
         @UI.hidden: true
         Mid,
         @UI.hidden: true
         Eid,
         @EndUserText.label: 'Certification Code'
         Ccode,
         @EndUserText.label: 'Description'
         Descr,
         /* Associations */
         _Employee : redirected to parent YRAP_C_EMPLOYEE,
         _Modules  : redirected to YRAP_C_Modules
}
