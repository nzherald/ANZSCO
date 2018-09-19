#' ANZSCO-package
#' A data package for ANZSCO.
#' @docType package
#' @aliases ANZSCO
#' @title ANZSCO definitions
#' @name ANZSCO-package
#' @description Provides fully defined ANZSCO occupations in long form.
#' @details Use \code{data(package='ANZSCO')$results[, 3]} tosee a list of availabledata sets in this data package
#'     and/or DataPackageR::load_all
#' _datasets() to load them.
#' @seealso
#' NA
#' \link{anzsco}
NULL


#' Detailed description of the data
#' @name anzsco
#' @docType data
#' @title dataframe with every ANZSCO occupation fully defined
#' @format a \code{data.frame} containing the following fields:
#' \describe{
#' \item{Major.Group}{}
#' \item{Major.Group.Code}{}
#' \item{Sub.Major.Group.Code}{}
#' \item{Sub.Major.Group}{}
#' \item{Minor.Group.Code}{}
#' \item{Minor.Group}{}
#' \item{Unit.Group.Code}{}
#' \item{Unit.Group}{}
#' \item{Occupation}{}
#' \item{Occupation.Code}{}
#' }
#' @source The data comes from http://www.abs.gov.au/ANZSCO
#' @seealso
#' \link{ANZSCO-package}
NULL
