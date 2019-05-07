====
Code
====

The generator does not write any code for you, but it will generate an empty
package or module based on your choice. The tests directory will be created
for you, but you'll need to add the first test.

This sample project has a single-file module (``project_template.py`` `🔗`__)
and one test (``test_greeting.py`` `🔗`__).

.. __: https://github.com/thejohnfreeman/project-template-python/blob/master/project_template.py
.. __: https://github.com/thejohnfreeman/project-template-python/blob/master/tests/test_greeting.py


.. _code_quality:

Quality
-------

There are a few tools installed to help you maintain high code quality.
All of these are executed with the ``lint`` :ref:`script <scripts>`:

.. code-block:: shell

   $ poetry run make lint

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

There is a Pylint configuration_ in ``.pylintrc`` `🔗`__. Its settings are
documented there_. To learn how to enable, disable, or configure Pylint's
diagnostics, consult the documentation on `message control`_ or take a look at
Pylint's own `configuration file`__.

.. _configuration: http://pylint.pycqa.org/en/stable/user_guide/run.html#command-line-options
.. __: https://github.com/thejohnfreeman/project-template-python/blob/master/.pylintrc
.. _there: https://github.com/thejohnfreeman/project-template-python/blob/master/.pylintrc
.. _message control: http://pylint.pycqa.org/en/stable/user_guide/message-control.html
.. __: https://github.com/PyCQA/pylint/blob/master/pylintrc
