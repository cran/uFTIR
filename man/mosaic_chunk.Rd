% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mosaic_chunk.R
\name{mosaic_chunk}
\alias{mosaic_chunk}
\title{Mosaic chunk}
\usage{
mosaic_chunk(info, path, dmdfile, fpa, wl)
}
\arguments{
\item{info}{Optional. \code{\link[=SpectralInfo-class]{SpectralInfo}} object.}

\item{path}{Optional. Path to dmdfile. Overwrites the path on the info object.}

\item{dmdfile}{Target *.dmd file to read.}

\item{fpa}{If info is missing, you should indicate the fpa size of the chunk.}

\item{wl}{If info is missing, you should indicate the wavenumbers at which you read your data}
}
\value{
A \code{\link[=Tile-class]{Tile}} object.
}
\description{
The function read a single mosaic tile (.dmd file extension) using a \code{\link[=SpectralInfo-class]{SpectralInfo}} object as a guide to find the file. It returns an object of class \code{\link[=Tile-class]{Tile}}, which can be (pre/post)processed as if it were a single tile.
}
\examples{
x <- mosaic_info(base::system.file("extdata/mosaic.dmt", package = "uFTIR"))
y <- mosaic_chunk(info = x, dmdfile = "mosaic_0000_0000.dmd")
class(y)
}
