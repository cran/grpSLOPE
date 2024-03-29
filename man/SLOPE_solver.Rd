% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SLOPE_solver.R
\name{SLOPE_solver}
\alias{SLOPE_solver}
\title{Sorted L1 solver}
\usage{
SLOPE_solver(
  A,
  b,
  lambda,
  initial = NULL,
  prox = prox_sorted_L1,
  max_iter = 10000,
  grad_iter = 20,
  opt_iter = 1,
  tol_infeas = 1e-06,
  tol_rel_gap = 1e-06
)
}
\arguments{
\item{A}{an \eqn{n}-by-\eqn{p} matrix}

\item{b}{vector of length \eqn{n}}

\item{lambda}{vector of length \eqn{p}, sorted in decreasing order}

\item{initial}{initial guess for \eqn{x}}

\item{prox}{function that computes the sorted L1 prox}

\item{max_iter}{maximum number of iterations in the gradient descent}

\item{grad_iter}{number of iterations between gradient updates}

\item{opt_iter}{number of iterations between checks for optimality}

\item{tol_infeas}{tolerance for infeasibility}

\item{tol_rel_gap}{tolerance for relative gap between primal and dual
problems}
}
\value{
An object of class \code{SLOPE_solver.result}. This object is a list
 containing at least the following components:
 \item{x}{solution vector \eqn{x}}
 \item{optimal}{logical: whether the solution is optimal}
 \item{iter}{number of iterations}
}
\description{
Solves the sorted L1 penalized regression problem: given a matrix \eqn{A},
a vector \eqn{b}, and a decreasing vector \eqn{\lambda}, find the vector
\eqn{x} minimizing
\deqn{\frac{1}{2}\Vert Ax - b \Vert_2^2 +
      \sum_{i=1}^p \lambda_i |x|_{(i)}.}
This optimization problem is convex and is solved using an accelerated
proximal gradient descent method.
}
\details{
This function has been adapted (with only cosmetic changes) from
the R package \code{SLOPE} version 0.1.3, due to this function being
deprecated and defunct in \code{SLOPE} versions which are newer than 0.1.3.
}
