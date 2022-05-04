#' 物料编码生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' prdGenUI()
prdSelUI <- function(tabTitle ='物料列表查询',
                     colTitles =c('操作设置','报表区域'),
                     widthRates =c(4,8),
                     func_left = prdSelUI_com_left,
                     func_right =prdSelUI_com_right

) {

  res = tsui::uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)

}

#' 请输入文件
#'
#' @return 返回值
#' @include data.R
#' @export
#'
#' @examples
#' prdGeneratorUI_com_left()
prdSelUI_com_left <- function() {

  parentCategoryList = prdCategory_ParentCategory_query()
  res <- tagList(
    tsui::mdl_text2(id = 'prdSel_FNumber_txt',label = '请输入物料编码',value = ''),
    shinyWidgets::actionBttn(inputId = 'prdSel_query_btn',label = '查收'),
    tsui::mdl_download_button(id = 'prdSel_dl_btn',label = '下载')


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' prdGenUI_com_right()
prdSelUI_com_right <- function() {
  res <- tagList(
         tsui::uiScrollX(DT::dataTableOutput(outputId = 'prdSel_query_dataview'))


  )
  return(res)

}
