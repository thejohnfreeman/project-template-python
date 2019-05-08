PACKAGE := project_template

html :
	${MAKE} -C docs html

lint :
	mypy ${PACKAGE}.py tests
	pylint --jobs $(shell nproc) ${PACKAGE} tests
	pydocstyle ${PACKAGE} tests

serve :
	sphinx-autobuild docs docs/_build/html --host 0.0.0.0 --watch .

test :
	pytest --cov=${PACKAGE} --doctest-modules --ignore=docs

.PHONY : html lint test serve

.DEFAULT_GOAL :=
