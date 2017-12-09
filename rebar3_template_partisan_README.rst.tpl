{{ name }}
===========

A partisan application

Build
-----

::

    rebar3 release

Test
----

::

    rebar3 ct

Run
---

::

    rebar3 run

Clustering
----------

::

    make devrel

    # on 3 different shells
    make dev1-console
    make dev2-console
    make dev3-console

    # on dev1 node shell
    ({{name}}1@127.0.0.1)1> {{name}}_peer_service:join('{{name}}2@127.0.0.1').
    ({{name}}1@127.0.0.1)2> {{name}}_peer_service:join('{{name}}3@127.0.0.1').

Quit
----

::

    1> q().

TODO
----

* define license and create LICENSE file

License
-------

TODO
