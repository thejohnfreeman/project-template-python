.. _scripts:

=======
Scripts
=======

This project includes a Makefile to approximate the convenience of `npm
scripts`_, at least until such scripts `make their way`_ into
``pyproject.toml``.
Using a Makefile for common tasks like running tests, formatting code, or
building the documentation relieves us from having to memorize and recite the
command lines or from keeping around a bunch of small shell scripts. Makefile
targets give us short, easily-remembered names for these tasks.

.. _npm scripts: https://medium.freecodecamp.org/introduction-to-npm-scripts-1dbb2ae01633
.. _make their way: https://github.com/sdispater/poetry/pull/591

The default Makefile has a few targets:

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

      $ poetry run make <target>

   Alternatively, if you want every command to conveniently execute in the
   virtual environment, then you can start a shell in that environment:

   .. code-block:: shell

      $ poetry shell
