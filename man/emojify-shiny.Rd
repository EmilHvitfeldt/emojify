% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emojify.R
\name{emojify-shiny}
\alias{emojify-shiny}
\alias{emojifyOutput}
\alias{renderEmojify}
\alias{emojify_html}
\title{Shiny bindings for emojify}
\usage{
emojifyOutput(outputId, width = "100\%", height = "400px")

renderEmojify(expr, env = parent.frame(), quoted = FALSE)

emojify_html(id, style, class, ...)
}
\arguments{
\item{outputId}{output variable to read from}

\item{expr}{An expression that generates a emojify}

\item{env}{The environment in which to evaluate \code{expr}.}

\item{quoted}{Is \code{expr} a quoted expression (with \code{quote()})? This
is useful if you want to save an expression in a variable.}
}
\description{
Output and render functions for using emojify within Shiny
applications and interactive Rmd documents.
}
