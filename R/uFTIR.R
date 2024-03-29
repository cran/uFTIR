#' Process and analyze Agilent Cary 620 FTIR Microscope images
#' 
#' @name uFTIR
#' @description Process and analyze Agilent Cary 620 FTIR Microscope images
#' @docType package
#' @useDynLib uFTIR, .registration = TRUE
#' @importFrom Rcpp evalCpp
#' @importFrom methods new setMethod setClassUnion
#' @importFrom graphics plot axis filled.contour points
#' @importFrom stats approx aggregate rnorm
#' @importFrom grDevices colorRampPalette
#' @importFrom sp CRS write.asciigrid
#' @import parallel
#' @importMethodsFrom raster raster setValues area writeRaster plot
#' @importClassesFrom raster RasterLayer
#' @importClassesFrom sp CRS
NULL
