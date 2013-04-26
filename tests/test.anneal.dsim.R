# This file is part of dsim R package.
#
# dsim R package is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# dsim R package is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with dsim R package. If not, see <http://www.gnu.org/licenses/>.


# Test cases as identified by Bigenix for Issue #1, comment-16672904

# The annealing process can be broken down to annealing a single nucleotide to another single nucleotide. Then again only A can be annealed to T, and G can be annealed to C and vice versa within the complementary bases.
# So in my eyes the basic anneal - function is nothing more than getting the complementary of a single nucleotide. Annealing a longer strand then is simple the repetition of this basic operation along an input stream of nucleotides.
# I would therefore replace anneal with complement.

# "... we should opt for both possibilities, cutting at a selected position ... "
# TO BE IMPLEMEMENTED
test.anneal <- function() {
	checkEquals(TRUE, FALSE)
}
