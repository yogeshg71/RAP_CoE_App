@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View Entity for CoE Modules'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity YRAP_R_MODULES
  as select from yrap_modules
  composition [0..*] of YRAP_I_Projects as _Projects //on  $projection.Mid = _projects.mid
                                                    //and $projection.Pid = _projects.pid
  composition [0..*] of YRAP_I_EMPLOYEE as _Employees //on  $projection.Mid = _employees.mid
                                                    //and $projection.Eid = _employees.eid
{
  key    uuid  as Uuid,
  key    mid   as Mid,
         pid   as Pid,
         eid   as Eid,
         sid   as Sid,
         cid   as Cid,
         name  as Name,
         descr as Descr,
         _Projects,
         _Employees

}
