.ONESHELL: #The ONE_SHELL feature in GNU Make allows all recipe lines to be executed in a single shell instance, improving performance and enabling more complex shell scripts.
ENV_PREFIX=$(shell python -c "if __import__('pathlib').Path('.venv/bin/pip').exists(): print('.venv/bin/')")
.DEFAULT_GOAL := install
VIRTUAL_ENV=.venv
PYTHON=${VIRTUAL_ENV}/bin/python3
PIP=${VIRTUAL_ENV}/bin/pip
ENV := int

$(VIRTUAL_ENV):      ## Create a virtual environment.
	@echo "creating virtualenv ..."
	@rm -rf .venv
	@python3.11 -m venv .venv
	@./.venv/bin/pip install -U pip
	@chmod +x ./.venv/bin/activate
	@echo
	@echo "!!! Please run 'source .venv/bin/activate' to enable the environment on your terminal !!!"

.PHONY: venv
venv: $(VIRTUAL_ENV)

.PHONY: install
install: venv requirements.txt
	# pip install -r requirements.txt
	$(PIP) install -r requirements.txt

.PHONY: show
show:             ## Show the current environment.
	$(PYTHON) -VV
	$(PYTHON) -m site

.PHONY: clean
clean:
	rm -rf __pycache__
	rm -rf .venv

