.PHONY: ansiblelint default lint playbook yamllint

default: lint playbook

ansiblelint:
	ansible-lint localhost.yml

lint: yamllint ansiblelint

playbook:
	ansible-playbook localhost.yml

yamllint:
	find . -type f -iname '*.yml' -exec yamllint {} \;

