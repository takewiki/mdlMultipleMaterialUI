


#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' propValueFunc_left()
propValueFunc_left<- function() {

  res <- tagList(

    shinyWidgets::actionBttn(inputId = 'propValue_query_btn',label = '查看'),
    tsui::mdl_download_button(id = 'propValue_dl_btn',label = '下载'),
    hr(),
    tsui::uiTemplate(templateName = '属性选项模板'),
    br(),
    tsui::mdl_file(id = 'propValue_upload_file',label = '请选择需要属性选项EXCEL文件'),
    shiny::uiOutput(outputId = 'propValue_sheets_placeholder'),
    shiny::actionButton(inputId = 'propValue_upload_btn',label = '上传至服务器')
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
#' propValueFunc_right()
propValueFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'propValue_query_dataview',label = '属性选项'))
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
#' propValueUI()
propValueUI <- function(tabTitle ='属性选项',
                           colTitles =c('操作区域','报表区域'),
                           widthRates =c(4,8),
                           func_left = propValueFunc_left,
                           func_right =propValueFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}




