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


# "... we want to be able to create a certain amount of material with random bases."
test.synthesize_certain_amount_of_random_bases <- function() {
	library(dsim)
	
	# random amount of material, between 1 and 100 bases
	number_bases <- sample.int(100,1)
	material_a <- list()
	material_b <- list()
	
	material_a <- synthesize.dsim(material_a, 1, number_bases) # default length: 10 bases
	material_b <- synthesize.dsim(material_b, 1, number_bases) # default length: 10 bases
	
	# - check that the amount of bases is correct
	checkEqualsNumeric(length(material_a[[1]]), number_bases)
	checkEqualsNumeric(length(material_b[[1]]), number_bases)
	
	# - check that the bases are random.
	comp_bases <- material_a[[1]] == material_b[[1]]
	checkTrue(FALSE %in% comp_bases) # If material_a != material_b at a single position, FALSE %in% comp_bases returns TRUE
}

# see above test description
test.synthesize_default_amount_of_random_bases <- function() {
	library(dsim)
	
	# random amount of material, between 1 and 100 bases
	material_a <- list()
	material_b <- list()
	
	material_a <- synthesize.dsim(material_a, 1) # default length: 10 bases
	material_b <- synthesize.dsim(material_b, 1) # default length: 10 bases
	
	# - check that the amount of bases is correct
	checkEqualsNumeric(length(material_a[[1]]), 10)
	checkEqualsNumeric(length(material_b[[1]]), 10)
	
	# - check that the bases are random.
	comp_bases <- material_a[[1]] == material_b[[1]]
	checkTrue(FALSE %in% comp_bases) # If material_a != material_b at a single position, FALSE %in% comp_bases returns TRUE
}



# "... we need the capability to synthesize specific sequences to represent certain states."
test.synthesize_specific_sequences <- function() {
	library(dsim)
	
	material <- list()
	base_sequence <- c(2,0,0,1,1,2,3,1,0,2,1,2)
	material <- synthesize.dsim(material, 1, length(base_sequence), base_sequence)
	
	# check that the synthesized sequence is equal to the desired sequence
	checkEqualsNumeric(length(material[[1]]), length(base_sequence))
	comp_bases <- material[[1]] == base_sequence
	different_bases <- which(comp_bases == FALSE)
	checkTrue(length(different_bases) == 0)
}