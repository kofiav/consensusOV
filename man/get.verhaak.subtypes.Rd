% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.verhaak.subtypes.R
\name{get.verhaak.subtypes}
\alias{get.verhaak.subtypes}
\title{Get ovarian cancer subtypes as defined by Verhaak et al., 2013}
\usage{
get.verhaak.subtypes(expression.matrix, entrez.ids)
}
\arguments{
\item{expression.matrix}{A matrix of gene expression values with rows as genes, columns as samples.}

\item{entrez.ids}{A vector of Entrez Gene IDs, corresponding to the rows of \code{expression.matrix}}
}
\value{
A list with first value \code{Verhaak.subtypes} containing a factor of subtype names;
and second value \code{gsva} containing the GSVA subtype scores
}
\description{
Get ovarian cancer subtypes as defined by Verhaak et al., 2013
}
\examples{
library(Biobase)
data(GSE14764.eset)
expression.matrix <- exprs(GSE14764.eset)
entrez.ids <- as.character(fData(GSE14764.eset)$EntrezGene.ID)
get.konecny.subtypes(expression.matrix, entrez.ids)
}
\references{
Verhaak et al. \emph{Prognostically relevant gene signatures of high-grade serous ovarian carcinoma.}
The Journal of Clinical Investigation (2013)
}
