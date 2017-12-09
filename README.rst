rebar3 partisan template
=========================

A `rebar3 <http://rebar3.org>`_ template for partisan applications.

Setup
-----

`Install rebar3 <http://www.rebar3.org/docs/getting-started>`_ if you haven't already.

then install this template::

    mkdir -p ~/.config/rebar3/templates
    git clone https://github.com/marianoguerra/rebar3_template_partisan.git ~/.config/rebar3/templates/rebar3_template_partisan

Use
---

::

    rebar3 new rebar3_template_partisan name=party
    cd party
    rebar3 release
    rebar3 run

Author
------

Mariano Guerra

License
-------

Apache 2.0
