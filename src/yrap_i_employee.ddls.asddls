@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View entity for Employees'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YRAP_I_EMPLOYEE
  as select from yrap_employee
  association to parent YRAP_R_MODULES        as _Module on  $projection.Uuid = _Module.Uuid
                                                         and $projection.Mid  = _Module.Mid
  //  association [0..*] to YRAP_I_SKILLS         as _skills         on  $projection.Eid = _skills.Eid
  //                                                                 and $projection.Sid = _skills.Sid
  //  association [0..*] to YRAP_I_CERTIFICATIONS as _certifications on  $projection.Eid = _certifications.Eid
  //                                                                 and $projection.Cid = _certifications.Cid
  //  association [0..*] to YRAP_I_UTILIZATIONS   as _utilizations   on  $projection.Eid  = _utilizations.Eid
  //                                                                 and $projection.Utid = _utilizations.Utid
  composition [0..*] of YRAP_I_SKILLS         as _Skills
  composition [0..*] of YRAP_I_UTILIZATIONS   as _Utilizations
  composition [0..*] of YRAP_I_CERTIFICATIONS as _Certifications

{
  key uuid        as Uuid,
  key eid         as Eid,
      mid         as Mid,
      pid         as Pid,
      sid         as Sid,
      cid         as Cid,
      utid        as Utid,
      name        as Name,
      status      as Status,
      designation as Designation,
      email       as Email,
      dept        as Dept,
      contact     as Contact,
      address     as Address,
      city        as City,
      post_code   as PostCode,
      country     as Country,
      _Module,
      _Skills,
      _Certifications,
      _Utilizations
}
