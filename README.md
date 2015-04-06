Introduction
============

**rgentpl** is a Ruby library to generate a custom skeleton app.

[![Build Status](https://travis-ci.org/jatap/rgentpl.png)](https://travis-ci.org/jatap/rgentpl)

It's based on a great toolkit for building powerful command-line interfaces, [Thor](https://github.com/erikhuda/thor), and main goal is cover some basic good practices.

Directories
===========

Application file structure (similar to generated).

    bin/
      rgentpl

    config/
      environments/
      initializers/

    coverage/

    doc/
      api/

    lib/
      rgentpl/
        boot/
        command/
        core/
        core_ext/
        exception/

    log/
      development.log
      test.log
      production.log
      yard.log

    spec/

    tasks/

    tmp/


Installation
============

As a command line application.

    $ git clone https://github.com/jatap/rgentpl.git

As a library/gem.

    // Install on current gemset
    $ gem install 'rgentpl'

    // Or inside a Gemfile
    gem 'rgentpl'
    $ bundle install


Usage as a command line application
===================================

Getting help.

    $ rgentpl
    $ rgentpl --help

Generate app with default values.

    $ rgentpl generate my_app

Generate app updating root path.

    $ rgentpl generate my_app -p /root/path/to/app

Generate app updating root path and ctags binary path.

> $ which ctags

    $ rgentpl generate my_app -p /root/path/to/app -t /path/to/ctags

### Options:

  * **-p** _root path_

> Default value: /tmp

  * **-t** _ctags binary path_

> Default value: /usr/local/bin/ctags

### Environments:

> **development**: default environment.

Setting production

    $ TEMPLATE_ENV = production rgentpl

or test environment.

    $ TEMPLATE_ENV = test rgentpl


Usage as a library
==================

    require 'rgentpl'
