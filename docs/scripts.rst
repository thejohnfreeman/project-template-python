=======
Scripts
=======

This project includes an "Invokefile" to approximate the convenience of `npm
scripts`_, at least until such scripts `make their way`_ into
``pyproject.toml``.
By Invokefile, I'm talking about a ``tasks.py`` script for the Invoke_ tool.
Using Invoke for common tasks like running tests, formatting code, or
building the documentation relieves us from having to memorize and recite the
command lines or from keeping around a bunch of small shell scripts.
Invoke tasks give us short, easily-remembered names for these functions.

.. _npm scripts: https://medium.freecodecamp.org/introduction-to-npm-scripts-1dbb2ae01633
.. _make their way: https://github.com/sdispater/poetry/pull/591
.. _Invoke: https://www.pyinvoke.org/

Previously, this project used a Makefile for scripts. Make has the advantage
that it is included by default on most Linuxes and OSX, and that it is more
well known than Invoke, but I switched to Invoke because it is cross-platform,
just like Python. The :doc:`continuous integration <continuous_integration>`
scripts use Invoke to run the tests to ensure that (1) the tests are run the
same way on every platform and that (2) the Invokefile is written correctly.

The `default Invokefile`__ has a few tasks:

.. __: https://github.com/thejohnfreeman/project-template-python/blob/master/tasks.py

====== ====
Target Task
====== ====
lint   Run the :ref:`linters <code_quality>`: style checkers, type checker,
       and static analyzers.
test   Run the tests (including doctests_) with coverage.
html   Build the documentation in HTML.
serve  Launch a server for the HTML documentation that, whenever a change is
       detected, rebuilds it and refreshes your browser.
====== ====

.. _linters: https://en.wikipedia.org/wiki/Lint_(software)
.. _doctests: https://pymotw.com/2/doctest/

.. note::

   The scripts assume they are running in the virtual environment of the
   project. You should invoke them like this:

   .. code-block:: shell

      $ poetry run invoke <task>

   Alternatively, if you want every command to conveniently execute in the
   virtual environment, then you can start a shell in that environment:

   .. code-block:: shell

      $ poetry shell
