@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View entity for Skills'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YRAP_I_SKILLS
  as select from yrap_skills
  association to parent YRAP_I_EMPLOYEE as _Employee on  $projection.Uuid = _Employee.Uuid
                                                     and $projection.Eid  = _Employee.Eid
  association to YRAP_R_MODULES         as _Modules  on  $projection.Uuid = _Modules.Uuid
                                                     and $projection.Mid  = _Modules.Mid
{
  key uuid  as Uuid,
  key sid   as Sid,
      mid   as Mid,
      eid   as Eid,
      subid as Subid,
      name  as Name,
      descr as Descr,
      levl  as Levl,
      _Employee,
      _Modules
}
