##
# db-migrator
#
# @file
# @version 0.1

install:
	poetry install

test:
	pytest

coverage:
	pytest --cov=db-migration/ --no-cov-on-fail

coverage-html:
	pytest --cov=db-migration/ --cov-report=html --no-cov-on-fail

open-coverage-html-mac: coverage-html
	open htmlcov/index.html

open-coverage-html-linux: coverage-html
	xdg-open htmlcov/index.html

# end
