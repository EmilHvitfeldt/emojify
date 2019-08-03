#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
emojify <- function(set, ..., width = NULL, height = NULL, elementId = NULL) {

  # describe a React component to send to the browser for rendering.
  component <- reactR::component("Picker",
                                list(set = set, ...))

  #<Picker set='emojione' />
  #<Picker onSelect={this.addEmoji} />
  #<Picker title='Pick your emoji…' emoji='point_up' />
  #<Picker style={{ position: 'absolute', bottom: '20px', right: '20px' }} />
  #<Picker i18n={{ search: 'Recherche', categories: { search: 'Résultats de recherche', recent: 'Récents' } }} />

  # create widget
  htmlwidgets::createWidget(
    name = 'emojify',
    component,
    width = width,
    height = height,
    package = 'emojify',
    elementId = elementId
  )
}

#' Shiny bindings for emojify
#'
#' Output and render functions for using emojify within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a emojify
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name emojify-shiny
#'
#' @export
emojifyOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'emojify', width, height, package = 'emojify')
}

#' @rdname emojify-shiny
#' @export
renderEmojify <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, emojifyOutput, env, quoted = TRUE)
}

#' Called by HTMLWidgets to produce the widget's root element.
#' @rdname emojify-shiny
emojify_html <- function(id, style, class, ...) {
  htmltools::tagList(
    # Necessary for RStudio viewer version < 1.2
    reactR::html_dependency_corejs(),
    reactR::html_dependency_react(),
    reactR::html_dependency_reacttools(),
    htmltools::tags$div(id = id, class = class, style = style)
  )
}
