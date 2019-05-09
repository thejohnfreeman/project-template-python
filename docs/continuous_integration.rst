======================
Continuous Integration
======================

Continuous integration is the name for automatically executing your tests when
you push changes to your software. The generator includes a configuration file
for the `Travis CI`_ continuous integration platform. It will test your
software on Linux and OSX across Python versions from your minimum supported
to the latest 3.8.

.. _Travis CI: https://travis-ci.org/

.. note::

   As of 2019 May 6, Travis CI does not have an image for OSX that includes
   Python 3.8. While Homebrew is available, trying to update the package list
   seems to fail__ (or return a spurious non-zero status), which I have not
   yet investigated. For the same reason, it is impossible to install nproc_
   (used by the lint :doc:`script <scripts>`) on the OSX image that has Python
   3.6.

   .. __: https://travis-ci.org/thejohnfreeman/project-template-python/jobs/528949377
   .. _nproc: http://man7.org/linux/man-pages/man1/nproc.1.html

To set up CI for your project, you'll need to:

- `Grant access`__ to the Travis CI application for your account or
  organization. This will let Travis CI add hooks and mark commits with the
  status of your builds.
- `Log in`__ to Travis CI with your GitHub credentials.
- `Enable your repository`__ on Travis CI. This will create a hook on GitHub to
  notify Travis CI whenever you push to your repository.

.. __: https://github.com/settings/connections/applications/f244293c729d5066cf27
.. __: https://travis-ci.org/
.. __: https://travis-ci.org/account/repositories

The generator includes the Travis CI badge for your project in the README_.

.. _README: https://raw.githubusercontent.com/thejohnfreeman/project-template-python/master/README.rst
