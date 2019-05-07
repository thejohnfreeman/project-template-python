=======
Package
=======

Once you're done testing and documenting your project, you may want to package
and distribute it. Poetry can help you upload a package to the `Python Package
Index (PyPI)`_. You only get one shot to publish a specific version on PyPI,
however. If you make a mistake, you have to publish a new version. That's why
they made a `TestPyPI`_ where you can overwrite a version until you get it
right.

.. _Python Package Index (PyPI): https://pypi.org/
.. _TestPyPI: https://test.pypi.org/


Getting started
---------------

.. highlight:: shell

Create accounts on both PYPI and TestPyPI. Remember your username and password
for both.

Check that Poetry already knows about the TestPyPI repository::

   $ poetry config repositories.test.url
   repositories.test.url = "https://test.pypi.org/legacy/"

Give Poetry your credentials for both of your accounts::

   $ poetry config http-basic.pypi <username> <password>
   $ poetry config http-basic.test <username> <password>


Publishing
----------

If you've already published the version that is named in your
``pyproject.toml``, then you'll need to pick the next version. Poetry can help
with that::

   $ poetry version
   $ poetry version minor
   $ poetry version major

Build your project::

   $ poetry build

Publish to TestPyPI::

   $ poetry publish --repository test

At this point, you should be able to create another project, install your
package as a dependency, import it, and test it. If you use Poetry to manage
that project, you'll need to add TestPyPI as a source in its
``pyproject.toml``:

.. code-block:: yaml

   [[tool.poetry.source]]
   name = "testpypi"
   url = "https://test.pypi.org/simple"

Once you feel confident your package is in good working order, publish it to
PyPI::

   $ poetry publish
