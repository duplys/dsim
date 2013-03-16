\name{synthesize.dsim}
\alias{synthesize.dsim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{A function to synthesize a sequence of nucleotides, i.e. a DNA strand
%%  ~~function to do ... ~~
}
\description{
A function to synthesize a given number of DNA strands, i.e. sequences of nucleotides, of a chosen length. This function is the simulation equivalent of DNA synthesis in the lab.
}
\usage{
synthesize.dsim(number_of_strands, length_of_strands)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{number}{ The desired number of DNA strands to be synthesized}
  \item{length}{ The length of the DNA strands, i.e. the number of nucleotides per strand, to be synthesized}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, ...) 
{
    cat("this is dsim!\n")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
