====
Code
====

The generator does not create any code for you. You'll need to choose between
a single-file module or a package directory and add them yourself. The tests
directory will be created for you, but you'll need to add the first test.


.. _code_quality:

Quality
-------

There are a few tools installed to help you maintain high code quality.
All of these are executed with the ``lint`` :ref:`script <scripts>`.

=========== ======
Tool        Reason
=========== ======
mypy_       Type-checking.
pylint_     Static analysis and `PEP 8`_ (code style) conformance.
pydocstyle_ `PEP 257`_ (docstring style) conformance.
=========== ======

.. _mypy: http://www.mypy-lang.org/
.. _pylint: https://www.pylint.org/
.. _PEP 8: https://www.python.org/dev/peps/pep-0008/
.. _PEP 257: https://www.python.org/dev/peps/pep-0257/
.. _pydocstyle: https://github.com/PyCQA/pydocstyle
