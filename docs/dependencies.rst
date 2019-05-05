============
Dependencies
============

This project manages dependencies through ``pyproject.toml`` `🔗`__, a Python
package metadata file working its way to standardization through `PEP 518`_.
Right now, the premier tool for managing that file is Poetry_. The generator_
requires you to have Poetry installed and has instructions_ in its
documentation for installing it.

.. __: https://github.com/thejohnfreeman/project-template-python/blob/master/pyproject.toml
.. _PEP 518: https://www.python.org/dev/peps/pep-0518/
.. _Poetry: https://github.com/sdispater/poetry#introduction
.. _generator: https://github.com/thejohnfreeman/generator-python
.. _instructions: https://github.com/thejohnfreeman/generator-python#install

.. highlight:: shell

If you're familiar with npm_ or Yarn_, Poetry works much the same way.
Poetry will create a virtual environment for your project and install your
project's dependencies there, isolated from the virtual environments of other
projects.
When you run the generator, it will install the starting dependencies, but if
you clone this project, you must install them yourself::

   $ poetry install

.. _npm: https://medium.com/beginners-guide-to-mobile-web-development/introduction-to-npm-and-basic-npm-commands-18aa16f69f6b
.. _Yarn: https://yarnpkg.com/

Dependencies are grouped. The two most common groups are **required**
(dependencies your code uses at runtime) and **development** (dependencies
your project uses for development, e.g. ``mypy`` or ``pytest``).
You can add or remove dependencies easily::

   $ poetry add requests
   $ poetry remove --dev mypy

By default, Poetry will search the `Python Package Index (PyPI)`__ for the
latest versions of the dependencies you name. To find out how to search other
package repositories or how to search for specific versions, consult the
`Poetry documentation`__.

.. __: https://pypi.org/
.. __: https://poetry.eustace.io/docs/basic-usage/


Pre-installed dependencies
--------------------------

By default, the generator does not install any required dependencies, but it
does install a set of development dependencies, explained here.

================= ======
Package           Reason
================= ======
mypy_             Type-checking.
pylint_           Static analysis and `PEP 8`_ (code style) conformance.
pydocstyle_       `PEP 257`_ (docstring style) conformance.
yapf_             Formatting code.
pytest_           :ref:`Testing <Tests>`.
pytest-cov_       Code coverage.
sphinx_           :ref:`Documentation`.
sphinx-autobuild_ Fast iterations on documentation.
sphinx_rtd_theme_ `Read the Docs`_ theme for documentation.
toml_             Reading the version from ``pyproject.toml``.
================= ======

.. _mypy: http://www.mypy-lang.org/
.. _pylint: https://www.pylint.org/
.. _PEP 8: https://www.python.org/dev/peps/pep-0008/
.. _PEP 257: https://www.python.org/dev/peps/pep-0257/
.. _pydocstyle: https://github.com/PyCQA/pydocstyle
.. _yapf: https://github.com/google/yapf
.. _pytest: https://docs.pytest.org/
.. _pytest-cov: https://pypi.org/project/pytest-cov/
.. _sphinx: http://www.sphinx-doc.org/
.. _sphinx-autobuild: https://github.com/GaretJax/sphinx-autobuild
.. _Read the Docs: https://readthedocs.org/
.. _sphinx_rtd_theme: https://sphinx-rtd-theme.readthedocs.io/en/stable/
.. _toml: https://github.com/uiri/toml
