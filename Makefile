like-home:
	ansible-playbook --inventory ansible/hosts --connection=local ansible/main.yml --ask-become-pass
