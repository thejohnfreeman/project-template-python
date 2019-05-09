=============
Documentation
=============

The most popular tool for writing Python documentation is Sphinx_, and the
most popular host for it is `Read the Docs (RTD)`__. Sphinx uses
reStructuredText_ for its markup language. The generator gives a skeleton for
your documentation in the ``docs`` directory `🔗`__.

.. _Sphinx: https://www.sphinx-doc.org/
.. __: https://docs.readthedocs.io/
.. __: http://docutils.sourceforge.net/rst.html
.. __: https://github.com/thejohnfreeman/project-template-python/tree/master/docs


Defaults
--------

- There are many themes for Sphinx, but the generator chooses the `RTD
  theme`__. It is designed to look good on desktop and mobile devices.

  .. __: https://sphinx-rtd-theme.readthedocs.io/

- The latest stable version of Sphinx is 2.0, but it is not__ yet__ compatible
  with the RTD theme. For now, the generator chooses the latest 1.x version.

  .. __: https://github.com/rtfd/sphinx_rtd_theme/issues/741
  .. __: https://github.com/rtfd/sphinx_rtd_theme/issues/752

- The documentation is versioned with your code. The generated configuration
  reads__ the version from ``pyproject.toml``, the single source of truth for
  package metadata.

  .. __: https://github.com/thejohnfreeman/project-template-python/blob/master/docs/conf.py#L15-L21

- The generator includes a `style sheet`__ that will wrap table text for you.
  (Thanks to Rackspace__!)

  .. __: https://github.com/thejohnfreeman/project-template-python/blob/master/docs/_static/table.css
  .. __: https://rackerlabs.github.io/docs-rackspace/tools/rtd-tables.html

- The landing page is generated from ``index.rst``. By default, it includes
  a section of content from the project README__ (so that you don't have to
  write it twice). Initially, that content is the project name and the project
  badges.


Editing
-------

You can edit the landing page by editing ``index.rst``. If you want to add
more pages ("chapters"), then add new reStructuredText files to the ``docs``
directory and link them from the ``toctree`` in ``index.rst``.

While you're working on documentation, you can use the ``serve`` :doc:`script
<scripts>` to launch a server for the HTML build of your documentation.
Whenever you change a file, the server will rebuild your documentation and
refresh your browser:

.. code-block:: shell

   $ poetry run make serve


Publishing
----------

When you're ready to publish your documentation on Read the Docs, follow these
steps:

- `Log in`__ to Read the Docs with your GitHub credentials.
- `Import`__ your project repository.
  (You may likely need to refresh the list.)
- Click "Build version" for the first build. Subsequent builds are
  automatically triggered when you push to GitHub.

  .. __: https://readthedocs.org/
  .. __: https://readthedocs.org/dashboard/import/
