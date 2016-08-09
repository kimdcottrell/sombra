# SombraARG Scripts and Data Collections

# Getting started
```
git clone https://github.com/kimdcottrell/sombra.git
bundle install
```

And boom, you should have everything. I'm currently working in irb but I plan on writing up scripts for things we've already done. This is very much a work in progress.

# What is this?

Currently, this just contains some REALLY helpful gems and a data dump module of everything "Sombra" has given us thus far, as well as the entire Numani Arrival flight list.

You can access the module vars with:

```
DataDump::TRACER_HASH_NEWLINES # string
DataDump::TRACER_HASH # string
DataDump::ANA_ORIGIN # hash
DataDump::FLIGHT_LIST # array of hashes
```

# Gemfiles and Rbenv
The .ruby-version file is referencing rbenv. If you aren't already using it, I definitely recommend it.
https://github.com/rbenv/rbenv#choosing-the-ruby-version

I'm pretty sure everything I will write in this repo will work in ruby 1.9+ though, so maybe you don't need 2.3.1

The Gemfile is referencing the bundler gem and if you're not using bundler and am working with ruby I am impressed by your patience.
http://bundler.io/

# Working in irb
So Ruby 1.9.2+ is troll AF and assumes that the current working directory should not be part of your ``LOAD_PATH``. This means that if you work in ``irb`` and type ``require 'data_dump'`` you'll get a big fat error that looks like this:

```
irb(main):003:0> require "DataDump"
LoadError: cannot load such file -- DataDump
```

You can get around this by starting irb with any of the following:

```
irb
require './data_dump'
```

OR

```
irb
irb(main):003:0> require_relative 'data_dump'
```

OR

```
irb -I .
irb(main):001:0> require 'data_dump'
```

For more information: http://stackoverflow.com/questions/2900370/why-does-ruby-1-9-2-remove-from-load-path-and-whats-the-alternative
