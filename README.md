Introduction
============

**rgentpl** is a Ruby library to generate a custom skeleton app.

[![Ruby Style Guide](https://img.shields.io/badge/code_style-standard-brightgreen.svg)](https://github.com/testdouble/standard)

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
      tasks/
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

### Options:

  * **-p** _root path_

> Default value: /tmp


### Environments:

> **development**: default environment.

Setting production

    $ TEMPLATE_ENV = production rgentpl

or test environment.

    $ TEMPLATE_ENV = test rgentpl


Usage as a library
==================

    require 'rgentpl'
