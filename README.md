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

Usage
=====

As a command line application:

    $ git clone https://github.com/jatap/rgentpl.git
    $ cd rgentpl
    $ bin/rgentpl

As a library/gem:

    $ gem install 'rgentpl'

    Or

    // Gemfile
    gem 'rgentpl'

    $ bundle install
