#' 请查收上级产品大类
#'
#' @param conn 连接
#'
#' @return 返回值
#' @export
#'
#' @examples
#' prdCategory_ParentCategory_query()
prdCategory_ParentCategory_query <- function(conn=tsda::conn_rds('cprds')) {
  sql = paste0("SELECT
        distinct FParentPrdCategory

  FROM  rds_mtrl_prdCategory
  where  Fdetail =1 and Fdeleted =0")
  data <- tsda::sql_select(conn,sql)
  ncount =nrow(data)
  if(ncount >0){
    res = data$FParentPrdCategory
    res = tsdo::vect_as_list(res)
  }else{
    res=list('无选项')
  }
  return(res)

}
