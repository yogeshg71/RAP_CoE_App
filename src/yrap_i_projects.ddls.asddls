@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View entity for Projects'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YRAP_I_Projects
  as select from yrap_projects
  association        to parent YRAP_R_MODULES as _Modules   on  $projection.Uuid = _Modules.Uuid
                                                            and $projection.Mid  = _Modules.Mid
  association [0..*] to yrap_employee         as _Employees on  $projection.Eid = _Employees.eid
{
  key uuid  as Uuid,
  key pid   as Pid,
      mid   as Mid,
      eid   as Eid,
      utid  as Utid,
      name  as Name,
      descr as Descr,
      _Modules,
      _Employees
}
