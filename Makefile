.PHONY: yamllint ansiblelint lint default

default: lint

lint: yamllint ansiblelint

yamllint:
	find . -type f -iname '*.yml' -exec yamllint {} \;

ansiblelint: 
	ansible-lint localhost.yml
