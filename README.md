Introduction
============

**rgentpl** is a Ruby library to generate a custom skeleton app.

Directories
===========

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
        exceptions/

    log/
      development.log
      test.log
      production.log

    spec/

    tasks/

    tmp/


Installation
============

As a command line application:

    $ git clone https://github.com/jatap/rgentpl.git

As a library/gem:

    // Install on current gemset
    $ gem install 'rgentpl'

    // Or inside a Gemfile
    gem 'rgentpl'
    $ bundle install


Usage
=====

As a command line application:

    $ rgentpl

As a library:

    require 'rgentpl'
