% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mosaic_compose.R
\name{mosaic_compose}
\alias{mosaic_compose}
\title{Mosaic compose}
\usage{
mosaic_compose(
  path = ".",
  clusterlist = NULL,
  nslices = NULL,
  drop_raw = FALSE
)
}
\arguments{
\item{path}{Where are the binary files? you can use the 'path' slot of the \code{\link[=SpectralInfo-class]{SpectralInfo}} instead of enter it manually.}

\item{clusterlist}{The clusterlist vector that you passed along with the \code{\link[=SpectralReference-class]{SpectralReference}} in the call to \code{\link{mosaic_sam}}.}

\item{nslices}{If you deal with large mosaics, you might want to load only a few of the sam matches. This argument allows you to define up to which match you want to load to R.}

\item{drop_raw}{If you are not interested in the angles you can set this argument to TRUE and avoid load them to R.}
}
\value{
An object of class \code{\link[=SAM-class]{SAM}}.
}
\description{
There are to ways to process a mosaic. One way -which should be the standard- is to do it internally in R by calling first \code{\link{mosaic_info}} and later \code{\link{mosaic_sam}}.

The function will write in the path specified in the \code{\link[=SpectralInfo-class]{SpectralInfo}} object returned by \code{\link{mosaic_info}} a series of binary files holding the SAM results. In other words, the function does not load the results to R automaticaly. You can call this function to load them back to R in a single object, which will be of class \code{\link[=SAM-class]{SAM}}.
}
\examples{
x <- mosaic_info(base::system.file("extdata/mosaic.dmt", package = "uFTIR"))
mosaic_sam(x, primpke, n_cores = 1)
y <- mosaic_compose(x@path, primpke@clusterlist)
}
\seealso{
\code{\link{mosaic_sam}}
}
