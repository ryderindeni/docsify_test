.PHONY: run
run:
	@cd docs && docsify serve

.PHONY: install
install:
	@cd docs && npm i docsify
