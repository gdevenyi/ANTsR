% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multiscaleSVDxpts.R
\name{sparseDistanceMatrix}
\alias{sparseDistanceMatrix}
\title{Create sparse distance, covariance or correlation matrix}
\usage{
sparseDistanceMatrix(x, k = 3, r = Inf, kmetric = c("euclidean",
  "correlation", "covariance"), eps = 1e-06)
}
\arguments{
\item{x}{input matrix, should be n (samples) by p (measurements)}

\item{k}{number of neighbors}

\item{r}{radius of epsilon-ball}

\item{kmetric}{similarity or distance metric determining k nearest neighbors}

\item{eps}{epsilon error for rapid knn}
}
\value{
matrix sparse p by p matrix is output with p by k nonzero entries
}
\description{
Exploit k-nearest neighbor algorithms to estimate a sparse similarity matrix.
Critical to the validity of this function is the basic mathematical
relationships between euclidean distance and correlation and between
correlation and covariance.  For applications of such matrices, one may see
relevant publications by Mauro Maggioni and other authors.
}
\examples{
\dontrun{
mat = matrix( rnorm(60), ncol=10 )
smat = sparseDistanceMatrix( mat, 2 )
}
}
\author{
Avants BB
}
\references{
\url{http://www.math.jhu.edu/~mauro/multiscaledatageometry.html}
}

