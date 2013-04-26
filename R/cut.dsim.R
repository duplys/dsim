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

cut.dsim <- function(material, sequence_index, cut_start, cut_end, ...) {

	working_copy <- material[[sequence_index]]	
	new_sequence <- working_copy[(cut_start+1):cut_end]
	
	if(cut_end < length(working_copy)) {
		prefix_left_over               <- working_copy[1:cut_start]
		suffix_left_over               <- working_copy[(cut_end+1):length(working_copy)]
		material[[sequence_index]]     <- new_sequence
		material[[(length(material)+1)]] <- prefix_left_over
		material[[(length(material)+1)]] <- suffix_left_over
	} else {
		left_over <- working_copy[1:cut_start]
		material[[sequence_index]] <- new_sequence
		material[[length(material)+1]] <- left_over
	}

	material
}