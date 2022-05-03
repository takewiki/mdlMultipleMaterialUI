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
prdGenUI <- function(tabTitle ='物料编码生成器',
                                colTitles =c('物料属性设置','物料生成结果'),
                                widthRates =c(4,8),
                                func_left = prdGenUI_com_left,
                                func_right =prdGenUI_com_right) {

  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
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
prdGenUI_com_left <- function() {

  parentCategoryList = prdCategory_ParentCategory_query()
  res <- tagList(
    tsui::mdl_ListChoose1(id = 'prdGen_parentCategory_lc1',label = '请选择上级产品大类:',choiceNames = parentCategoryList,choiceValues = parentCategoryList,selected = parentCategoryList[[1]]),
    shinyWidgets::actionBttn(inputId = 'prdGen_confirm_btn',label = '确认选择'),
    br(),
    hr(),
    DT::dataTableOutput(outputId = 'prdGen_prdCategory_dt'),
    br(),
    hr(),
    DT::dataTableOutput(outputId = 'prdGen_prdGroup_dt')

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
prdGenUI_com_right <- function() {
  res <- tagList(

    shiny::uiOutput('prdGen_propSelector_placeholder'),
    shinyWidgets::actionBttn(inputId = 'prdGen_propSelector_btn',label = '确认属性选配'),
    shiny::verbatimTextOutput('prdGen_propSelector_print')

  )
  return(res)

}
