# Array Range Extensions for Ruby On Rails arrays

Provides utility range methods for arrays.

## Install
Add the following to your `Gemfile`:
gem 'array_range_extensions'

Then run `bundle install`:

```bash
$ bundle install


## Usage
Add 'using ArrayRangeExtensions' to your rails class, controllers, helpers.

d1=DateTime.parse '28.02.2016 20:00'
d2=DateTime.parse'28.02.2016 22:00'
d3=DateTime.parse'29.02.2016 20:00'
d4=DateTime.parse'29.02.2016 22:00'
d5=DateTime.parse'28.02.2016 21:00'
d6=DateTime.parse'28.02.2016 23:00'

data1=[{start:10,end:15},{start:12,end:17},{start:20,end:25}]
@test1=data1.overlap_ranges
//@test1=[{:start=>10, :end=>15}, {:start=>12, :end=>17}]


data2=[{start:d1,end:d2},{start:d3,end:d4},{start:d5,end:d6}]
@test2=data2.overlap_ranges
//@test2=[{:start=>Sun, 28 Feb 2016 20:00:00 +0000, :end=>Sun, 28 Feb 2016 22:00:00 +0000}, {:start=>Sun, 28 Feb 2016 21:00:00 +0000, :end=>Sun, 28 Feb 2016 23:00:00 +0000}]
