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
#' materialGeneratorUI()
materialGeneratorUI <- function(tabTitle ='物料编码生成器',
                                colTitles =c('物料属性设置','物料生成结果'),
                                widthRates =c(3,9),
                                func_left = materialGeneratorUI_com_left,
                                func_right =materialGeneratorUI_com_right) {

  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)

}


#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' materialGeneratorUI_com_left()
materialGeneratorUI_com_left <- function() {
  res <- tagList(
    tsui::mdl_text2(id = 'mg_text',label = '请输入文本'),
    tsui::mdl_date(id = 'mg_date',label = '请输入日期'),
    shiny::actionButton(inputId = 'mg_test',label = '测试')
  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' materialGeneratorUI_com_right()
materialGeneratorUI_com_right <- function() {
  res <- 'materialGenerator_main_area'
  return(res)

}
