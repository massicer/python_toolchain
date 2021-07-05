TEST_DIR ?= .
PROJECT_SRC_DIRECTORY ?= src
LINE_LENGTH ?= 120

.PHONY: test
test:
	PYTHONPATH="$(PROJECT_SRC_DIRECTORY):$(PYTHONPATH)" \
	pytest \
	--cov=$(PROJECT_SRC_DIRECTORY) \
	--verbose \
	--cov-branch \
	--cov-report=term-missing \
	$(abspath $(TEST_DIR)); 

.PHONY: lint
lint: flake8 check_format


.PHONY: flake8
flake8: 
	flake8 .

.PHONY: check_format
check_format:
	isort  --line-width=$(LINE_LENGTH) --multi-line=3 --trailing-comma --check-only --diff --stdout .
	black --check --diff --line-length=$(LINE_LENGTH) .

.PHONY: format
format:
	isort --line-width=$(LINE_LENGTH) --multi-line=3 --trailing-comma --atomic --skip-gitignore .
	black --line-length=$(LINE_LENGTH) .