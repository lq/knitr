\name{fig_path}
\alias{fig_path}
\title{Path for figure files}
\usage{
fig_path(suffix = "", options = opts_current$get(), number)
}
\arguments{
\item{suffix}{a suffix of the filename; if it is not empty, nor does it
contain a dot \code{.}, it will be treated as the filename extension (e.g.
\code{png} will be used as \code{.png})}

\item{options}{a list of options; by default the options of the current chunk}

\item{number}{the current figure number (by default the internal chunk option
\code{fig.cur} if available)}
}
\value{
A character vector of the form \file{fig.path-label-i.suffix}.
}
\description{
The filename of figure files is the combination of options \code{fig.path}
and \code{label}. This function returns the path of figures for the current
chunk by default.
}
\note{
When there are special characters (not alphanumeric or \samp{-} or
  \samp{_}) in the path, they will be automatically replaced with \samp{_}.
  For example, \file{a b/c.d-} will be sanitized to \file{a_b/c_d-}. This
  makes the filenames safe to LaTeX.
}
\examples{
fig_path(".pdf", options = list(fig.path = "figure/abc-", label = "first-plot"))
fig_path(".png", list(fig.path = "foo-", label = "bar"), 1:10)
}
