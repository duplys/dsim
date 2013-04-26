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

print.dsim <- function(material, ...) {
	for(i in 1:length(material)) {
		working_copy <- material[[i]]
		
		working_copy[working_copy==0] <- 'A'
		working_copy[working_copy==1] <- 'G'
		working_copy[working_copy==2] <- 'C'
		working_copy[working_copy==3] <- 'T'
		
		print(paste(working_copy, collapse=" "))
	}
}
