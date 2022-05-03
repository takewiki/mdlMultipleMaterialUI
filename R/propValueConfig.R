


#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' propValueConfigFunc_left()
propValueConfigFunc_left<- function() {

  res <- tagList(

    shinyWidgets::actionBttn(inputId = 'propValueConfig_query_btn',label = '查看'),
    tsui::mdl_download_button(id = 'propValueConfig_dl_btn',label = '下载'),
    hr(),
    tsui::uiTemplate(templateName = '属性选项配置模板'),
    br(),
    tsui::mdl_file(id = 'propValueConfig_upload_file',label = '请选择需要属性选项配置EXCEL文件'),
    shiny::uiOutput(outputId = 'propValueConfig_sheets_placeholder'),
    shiny::actionButton(inputId = 'propValueConfig_upload_btn',label = '上传至服务器')
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
#' propValueConfigFunc_right()
propValueConfigFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'propValueConfig_query_dataview',label = '属性选项配置'))
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
#' propValueConfigUI()
propValueConfigUI <- function(tabTitle ='属性选项配置',
                        colTitles =c('操作区域','报表区域'),
                        widthRates =c(4,8),
                        func_left = propValueConfigFunc_left,
                        func_right =propValueConfigFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}




