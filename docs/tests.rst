=====
Tests
=====

The generator chooses pytest_ for the testing framework. All you have to do to
get started is add test modules in the ``tests`` `🔗`__ package.
Separately, you can write small tests in function docstrings using doctests_.
All of these tests are executed as part of the ``test`` :doc:`script
<scripts>`. The report includes coverage:

.. _pytest: https://docs.pytest.org/
.. __: https://github.com/thejohnfreeman/project-template-python/blob/master/tests
.. _doctests: https://pymotw.com/2/doctest/

.. code-block:: shell

   $ poetry run invoke test
   pytest --cov=project_template --doctest-modules --ignore=docs
   ============================= test session starts =============================
   platform linux -- Python 3.6.8, pytest-4.4.1, py-1.8.0, pluggy-0.9.0
   rootdir: /home/jfreeman/code/project-template-python
   plugins: cov-2.7.1
   collected 2 items

   project_template.py .                                                   [ 50%]
   tests/test_greeting.py .                                                [100%]

   ----------- coverage: platform linux, python 3.6.8-final-0 -----------
   Name                  Stmts   Miss  Cover
   -----------------------------------------
   project_template.py       2      0   100%


   ========================== 2 passed in 0.07 seconds ===========================
