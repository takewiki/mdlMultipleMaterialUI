


#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' propCategoryConfigFunc_left()
propCategoryConfigFunc_left<- function() {

  res <- tagList(

    shinyWidgets::actionBttn(inputId = 'propCategoryConfig_query_btn',label = '查看'),
    tsui::mdl_download_button(id = 'propCategoryConfig_dl_btn',label = '下载'),
    hr(),
    tsui::uiTemplate(templateName = '属性类别配置模板'),
    br(),
    tsui::mdl_file(id = 'propCategoryConfig_upload_file',label = '请选择需要属性类别配置EXCEL文件'),
    shiny::uiOutput(outputId = 'propCategoryConfig_sheets_placeholder'),
    shiny::actionButton(inputId = 'propCategoryConfig_upload_btn',label = '上传至服务器')
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
#' propCategoryConfigFunc_right()
propCategoryConfigFunc_right<- function() {

  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'propCategoryConfig_query_dataview',label = '属性类别配置'))
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
#' propCategoryConfigUI()
propCategoryConfigUI <- function(tabTitle ='属性类别配置',
                           colTitles =c('操作区域','报表区域'),
                           widthRates =c(4,8),
                           func_left = propCategoryConfigFunc_left,
                           func_right =propCategoryConfigFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}




