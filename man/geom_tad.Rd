% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_tad.R
\name{geom_tad}
\alias{geom_tad}
\title{Add Contact Map to Coverage Plot.}
\usage{
geom_tad(
  matrix,
  granges,
  color.palette = NULL,
  value.cut = NULL,
  transform.fun = NULL,
  plot.space = 0.1,
  plot.height = 1,
  top = TRUE,
  show.rect = FALSE
)
}
\arguments{
\item{matrix}{Matrix (n x n) contains contact map information.}

\item{granges}{The rownames and colnames information of matrix.}

\item{color.palette}{One of the RColorbrewer or viridis colour palettes.
Parameter of \code{\link{Brick_vizart_plot_heatmap}}. Default: NULL.}

\item{value.cut}{If present, values beyond a certain quantile will be capped to that quantile.
Parameter of \code{\link{Brick_vizart_plot_heatmap}}. Default: NULL.}

\item{transform.fun}{If any sort of transformations should be applied to the data before plotting.
Parameter of \code{\link{Brick_vizart_plot_heatmap}}. Default: NULL.}

\item{plot.space}{Top and bottom margin. Default: 0.1.}

\item{plot.height}{The relative height of contact map to coverage plot. Default: 1.}

\item{top}{Logical value, whether to place this plot on the coverage plot. Default: TRUE.}

\item{show.rect}{Logical value, whether to add rect border to the plot. Default: FALSE.}
}
\value{
Plot.
}
\description{
Add Contact Map to Coverage Plot.
}
