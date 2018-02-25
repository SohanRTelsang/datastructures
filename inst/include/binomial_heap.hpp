/**
 * datastructures: Implementation of core datastructures for R.
 * <p>
 * Copyright (C) Simon Dirmeier
 * <p>
 * This file is part of datastructures.
 * <p>
 * datastructures is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * <p>
 * datastructures is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * <p>
 * You should have received a copy of the GNU General Public License
 * along with datastructures. If not, see <http://www.gnu.org/licenses/>.
 *
 */


#ifndef DS_BINOMIALHEAP
#define DS_BINOMIALHEAP

#include <boost/heap/binomial_heap.hpp>

template <typename T, typename U>
class binomial_heap: public heap<boost::heap::binomial_heap, T, U>
{
public:
    binomial_heap(): heap<boost::heap::binomial_heap, T, U>() {}
};

using binomial_heap_ss = binomial_heap<std::string, std::string>;
using binomial_heap_si = binomial_heap<std::string, int>;
using binomial_heap_sb = binomial_heap<std::string, bool> ;
using binomial_heap_sd = binomial_heap<std::string, double>;

using binomial_heap_ds = binomial_heap<double, std::string>;
using binomial_heap_di = binomial_heap<double, int>;
using binomial_heap_db = binomial_heap<double, bool>;
using binomial_heap_dd = binomial_heap<double, double>;

using binomial_heap_is = binomial_heap<int, std::string>;
using binomial_heap_ii = binomial_heap<int, int>;
using binomial_heap_ib = binomial_heap<int, bool>;
using binomial_heap_id = binomial_heap<int, double>;

#endif
