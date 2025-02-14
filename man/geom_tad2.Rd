% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_tad2.R
\name{geom_tad2}
\alias{geom_tad2}
\title{Add Contact Map to Coverage Plot.}
\usage{
geom_tad2(
  matrix,
  granges,
  zlim = NULL,
  color.bias = 1,
  color.ramp = "YlOrRd",
  color.palette = NULL,
  smooth.func = NULL,
  plot.space = 0.1,
  plot.height = 1,
  top = TRUE,
  show.rect = FALSE
)
}
\arguments{
\item{matrix}{Matrix (n x n) contains contact map information.}

\item{granges}{The rownames and colnames information of matrix.}

\item{zlim}{The maximum value of color to plot. Larger values will be truncated to this value.}

\item{color.bias}{Bias parameter for color palette, it is the same as \code{bias} parameter of \code{\link{colorRampPalette}}. Default: 1.}

\item{color.ramp}{A name of a color palette, choose from rownames of \code{\link{brewer.pal.info}}. Default: YlOrRd.}

\item{color.palette}{A vector of colors. Overwrites the palette for \code{color.ramp}. Default: NULL.}

\item{smooth.func}{An optional smoothing function for the matrix. Default: NULL.}

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
\examples{
library(ggcoverage)
library(HiCDataHumanIMR90)
data(Dixon2012_IMR90, package = "HiCDataHumanIMR90")
mat <- as.matrix(hic_imr90_40@.Data[[1]]@intdata)
granges <- hic_imr90_40@.Data[[1]]@xgi
# prepare coverage dataframe
df <- data.frame(
  seqnames = "chr1", start = seq(from = 50000000, to = 59999000, by = 1000),
  end = seq(from = 50001000, to = 60000000, by = 1000), score = sample(1:100, 10000, replace = TRUE),
  Type = "Example", Group = "Example"
)
# create plot
ggcoverage(
  data = df, color = "grey", region = "chr1:50000000-56000000",
  mark.region = NULL, range.position = "out"
) +
  geom_tad2(matrix = log2(mat + 1), granges = granges, zlim = 5, color.palette = c("blue", "red"))
}
