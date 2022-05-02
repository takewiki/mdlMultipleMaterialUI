



#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' prdGroupFunc_left()
prdGroupFunc_left<- function() {

  res <- tagList(

    shinyWidgets::actionBttn(inputId = 'btnPrdGroup_query',label = '查看'),
    tsui::mdl_download_button(id = 'btnPrdGroup_dl',label = '下载'),
    hr(),
    tsui::uiTemplate(templateName = '产品分组模板'),
    br(),
    tsui::mdl_file(id = 'filePrdGroup_upload',label = '请选择需要产品分组EXCEL文件'),
    shiny::uiOutput(outputId = 'placeholderPrdGroup_sheets'),
    shiny::actionButton(inputId = 'btnprdGroup_upload',label = '上传至服务器')
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
#' prdGroupFunc_right()
prdGroupFunc_right<- function() {
  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'dataviewPrdGroup_query',label = '产品分组'))
  )
  return(res)

}

#' 产品分组UI
#'
#' @param tabTitle 标题
#' @param com_left 左
#' @param com_right 右
#'
#' @return 返回值
#' @export
#'
#' @examples
#' prdGroupUI()
prdGroupUI <- function(tabTitle ='产品分组',
                          colTitles =c('操作区域','报表区域'),
                          widthRates =c(4,8),
                          func_left = prdGroupFunc_left,
                          func_right =prdGroupFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}


