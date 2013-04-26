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


# "... and cutting at a specific sequence of nucleotides no matter at which position that sequence happens to be"
# TO BE IMPLEMENTED
test.find <- function() {
	checkEquals(TRUE, FALSE)
}

#test.cut_at_selected_sequence <- function() {
#	library(dsim)
	
#	material <- list()
#	test_sequence <- c(2,0,0,1,1,2,3,1,0,2,1,1,3,3)
#	material <- synthesize.dsim(material, 1, length(test_sequence), test_sequence)
#	sequence_index = 1
#	cut_start = 4
#	cut_end = 9
#	cut_sequence <- c(1,1,2,3,1)
#	cut.dsim(material, sequence_index, cut_sequence, cut_after=T)
	
	# check that cutting produced another DNA strand
#	number_sequences <- length(material)
#	checkEquals(number_sequences, 3)
	
	# check that cutting was done at the correct position
#	expected   <- c(1,1,2,3,1,0)
#	comp_bases <- material[[1]] == expected
#	different_bases <- which(comp_bases == FALSE)
#	checkTrue(length(different_bases) == 0)
	
	# check the correctness of the prefix leftover
#	expected   <- c(2,0,0)
#	comp_bases <- material[[2]] == expected
#	different_bases <- which(comp_bases == FALSE)
#	checkTrue(length(different_bases) == 0)

	# check the correctness of the suffix leftover
#	expected   <- c(2,1,1,3,3)
#	comp_bases <- material[[3]] == expected
#	different_bases <- which(comp_bases == FALSE)
#	checkTrue(length(different_bases) == 0)

#}

# " Additionally we might want to cut a specific sequence but only if it lies within a certain window along the dna-strand."
# TO BE IMPLEMENTED
#test.cut_sequence_within_certain_window <- function()
#{
#	checkEquals(6, 6)
#  checkEqualsNumeric(6, factorial(3))
#  checkIdentical(6, factorial(3))
#  checkTrue(2 + 2 == 4, 'Arithmetic works')
#  checkException(log('a'), 'Unable to take the log() of a string')
#}