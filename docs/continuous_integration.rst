======================
Continuous Integration
======================

Continuous integration is the name for automatically executing your tests when
you push changes to your software. The generator generates configuration files
for the `Travis CI`_ and `AppVeyor`_ continuous integration platforms, and
includes their status badges for the project in the README_.

.. _Travis CI: https://travis-ci.org/
.. _AppVeyor: https://www.appveyor.com/
.. _README: https://raw.githubusercontent.com/thejohnfreeman/project-template-python/master/README.rst


Travis CI
---------

Travis CI will test your software on Linux and OSX across Python versions 3.6,
3.7, and 3.8, excluding those less than your minimum supported.

.. note::

   As of 2019 May 6, Travis CI does not have an image for OSX that includes
   Python 3.8. While Homebrew is available, trying to update the package list
   seems to fail__ (or return a spurious non-zero status), which I have not
   yet investigated. For the same reason, it is impossible to install nproc_
   (used by the lint :doc:`script <scripts>`) on the OSX image that has Python
   3.6.

   .. __: https://travis-ci.org/thejohnfreeman/project-template-python/jobs/528949377
   .. _nproc: http://man7.org/linux/man-pages/man1/nproc.1.html

To set up Travis CI for your project, you'll need to:

- `Grant access`__ to the Travis CI application for your account or
  organization. This will let Travis CI add hooks and mark commits with the
  status of your builds.
- `Log in`__ to Travis CI with your GitHub credentials.
- `Enable your repository`__ on Travis CI. This will create a hook on GitHub to
  notify Travis CI whenever you push to your repository.

.. __: https://github.com/settings/connections/applications/f244293c729d5066cf27
.. __: https://travis-ci.org/
.. __: https://travis-ci.org/account/repositories


AppVeyor
--------

AppVeyor will test your software on Windows for Python versions 3.6 and 3.7,
excluding those less than your minimum supported.

To set up AppVeyor for your project, you'll need to:

- `Log in`__ to AppVeyor with your GitHub credentials.
- `Grant access`__ to AppVeyor for the project you want to test. This will let
  AppVeyor add hooks and mark commits with the status of your builds.
- `Add the project`__ on AppVeyor. This will create a hook on GitHub to notify
  AppVeyor whenever you push to your repository.

.. __: https://ci.appveyor.com/
.. __: https://ci.appveyor.com/account/thejohnfreeman/projects/new
.. __: https://ci.appveyor.com/account/thejohnfreeman/projects/new
