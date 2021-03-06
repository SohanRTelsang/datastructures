# datastructures: Implementation of core datastructures for R.
#
# Copyright (C) Simon Dirmeier
#
# This file is part of datastructures.
#
# datastructures is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# datastructures is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with datastructures. If not, see <http://www.gnu.org/licenses/>.


#' @title Get the first elements from an object
#'
#' @description Extracts the first couple of entries from an object.
#'
#' @export
#' @docType methods
#' @rdname head-methods
#'
#' @param obj  the object to get the head from
#'
#' @return  returns a list of elements from \code{obj}
#'
setGeneric(
    "head",
    function(obj)
    {
        standardGeneric("head")
    },
    package = "datastructures"
)
