like-home:
	ansible-playbook --inventory ansible/hosts --connection=local ansible/main.yml --ask-become-pass  #--extra-vars "ansible_become_password=guessit"

shell:
	docker run -it --rm -v $(PWD):/ansible ansible_docker_test bash

# Build the Docker image
build:
	docker build -t ansible_docker_test .

# Run the container, mounting the current directory as a volume
run:
	docker run -it --rm -v $(PWD):/ansible ansible_docker_test


# Execute the playbook
playbook:
	docker run -it --privileged --rm -v $(PWD):/ansible ansible_docker_test  ansible-playbook --inventory ansible/hosts --connection=local ansible/main.yml   #--extra-vars "ansible_become_password=guessit"
