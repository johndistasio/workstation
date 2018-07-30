.PHONY: yamllint ansiblelint lint

yamllint:
	find . -type f -iname '*.yml' -exec yamllint {} \;

ansiblelint: 
	ansible-lint localhost.yml

lint: yamllint ansiblelint
