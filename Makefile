default: lint playbook

.PHONY: ansiblelint
ansiblelint:
	ansible-lint localhost.yml

.PHONY: yamllint
lint: yamllint ansiblelint

.PHONY: playbook
playbook:
	ansible-playbook localhost.yml

.PHONY: yamllint
yamllint:
	find . -type f -iname '*.yml' -exec yamllint {} \;

