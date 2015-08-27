minimalplone5
=============

This is a minimal buildout configuration for installing the latest Plone 5.

Currently, I recommend to install the development version with unreleased
packages. Therefore, the buildout extends files from buildout.coredev on github.


Prerequisites
-------------
- Python 2.7
- Python Virtualenv
- Git


Install
-------

::

    $ git clone git@github.com:collective/minimalplone5.git
    $ cd minimalplone5
    $ virtualenv .
    $ ./bin/pip install zc.buildout
    $ ./bin/buildout

Or if you want to use the ZEO configuration::

    $ ./bin/buildout -c zeo.cfg

In any case you will be asked for an administrative username and password.

Fire up Zope and maybe the ZEO Server::

    $ ./bin/zeoserver start
    $ ./bin/instance start

Point your webbrowser to http://localhost:8080 (username admin, password admin)
and install a Plone instance.

That's all, folks.


Extend the config
-----------------

For your own projects, you might extend the configuration. Use a different
PORT, add some more eggs, like::


    [zeoserver]
    zeo-address = 8100

    [instance]
    http-address = 8080
    zeo-address = ${zeoserver:zeo-address}
    eggs +=
        plone.app.debugtoolbar
        plone.app.widgets

