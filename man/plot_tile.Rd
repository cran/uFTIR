% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_methods.R
\name{plot,plot.uFTIR,missing-method}
\alias{plot,plot.uFTIR,missing-method}
\alias{plot_tile}
\title{Plotting Objects}
\usage{
\S4method{plot}{plot.uFTIR,missing}(x, y, ...)

plot_tile(x, slice = 1, FUN = sum, match_uFTIR = FALSE, ...)
}
\arguments{
\item{x}{Tile, SpectralPack, SAM, Smooth, or clipper to plot.}

\item{y}{Missing.}

\item{...}{Further arguments to \code{\link[raster]{plot}}}

\item{slice}{For objects of class SAM or Smooth, Which slice of the cube should be plotted?}

\item{FUN}{For objects of class SpectralPack and Tile, Which function should be used to collapse the cube to a matrix?}

\item{match_uFTIR}{The Agilent Microscope transposes and inverts the image (it inverts rows only -cols after transposition). Do you want the plot function to match this behaviour? Default FALSE.}
}
\value{
A function that plots a tile and returns NULL.
}
\description{
Plotting method for objects of class \code{\link[=Tile-class]{Tile}}, \code{\link[=SpectralPack-class]{SpectralPack}}, \code{\link[=SAM-class]{SAM}}, \code{\link[=Smooth-class]{Smooth}}, and \code{\link{clipper}}.

In objects of class SAM, always the clusters slot gets plotted.
}
\details{
The function requires the raster package to plot. It coerses the matrix to raster to do so.
}
\examples{
# Tile objects:
x <- tile_read(base::system.file("extdata/tile.bsp", package = "uFTIR"))
plot(x)
# with arguments for raster::plot
plot(x, axes = FALSE, box = FALSE, legend = FALSE)

# SpectralPack objects:
x <- tile_base_corr(x)
x <- wavealign(x, primpke)
plot(x) 

# SAM objects:
x <- tile_sam(x)
plot(x)

# Smooth objects
x <- smooth_sam(x, as.integer(length(primpke@clusternames)), window = 3, 1)
plot(x)

# clipper objects:
clip <- toClip(8,20,c(10,10))
polygon(clip@xycoords)
x <- clipper(x, clip@centre, clip@rad, 1)
plot(x)
}
