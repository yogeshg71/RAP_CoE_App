@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View entity for Certifications'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YRAP_I_CERTIFICATIONS
  as select from yrap_cert
  association to parent YRAP_I_EMPLOYEE as _Employee on  $projection.Uuid = _Employee.Uuid
                                                     and $projection.Eid  = _Employee.Eid
  association to YRAP_R_MODULES         as _Modules  on  $projection.Uuid = _Modules.Uuid
                                                     and $projection.Mid  = _Modules.Mid
{
  key uuid  as Uuid,
  key cid   as Cid,
      mid   as Mid,
      eid   as Eid,
      ccode as Ccode,
      descr as Descr,
      _Employee,
      _Modules
}
