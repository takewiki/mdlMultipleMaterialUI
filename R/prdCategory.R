


#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' prdCategoryFunc_left()
prdCategoryFunc_left<- function() {

  res <- tagList(

    shinyWidgets::actionBttn(inputId = 'btnPrdCategory_query',label = '查看'),
    tsui::mdl_download_button(id = 'btnPrdCategory_dl',label = '下载'),
    hr(),
    tsui::uiTemplate(templateName = '产品大类模板'),
    br(),
    tsui::mdl_file(id = 'filePrdCategory_upload',label = '请选择需要产品大类EXCEL文件'),
    shiny::uiOutput(outputId = 'placeholderPrdCategory_sheets'),
    shiny::actionButton(inputId = 'btnprdCategory_upload',label = '上传至服务器')
  )
  return(res)

}






#' 请输入文件
#'
#' @return 返回值
#' @import tsui
#' @import shiny
#'
#' @examples
#' prdCategoryFunc_right()
prdCategoryFunc_right<- function() {

  res <- tagList(

   uiScrollX(mdl_dataTable(id = 'dataviewPrdCategory_query',label = '产品大类'))
  )
  return(res)

}

#' 产品大类UI
#'
#' @param tabTitle 标题
#' @param com_left 左
#' @param com_right 右
#'
#' @return 返回值
#' @export
#'
#' @examples
#' prdCategoryUI()
prdCategoryUI <- function(tabTitle ='产品大类',
                          colTitles =c('操作区域','报表区域'),
                          widthRates =c(4,8),
                          func_left = prdCategoryFunc_left,
                          func_right =prdCategoryFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}




