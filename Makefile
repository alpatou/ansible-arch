like-home:
	ansible-playbook --inventory ansible/hosts --connection=local ansible/main.yml --ask-become-pass  #--extra-vars "ansible_become_password=guessit"

shell:
	docker run -it  -v $(PWD):/ansible ansible_docker_test bash

# Build the Docker image
build:
	docker build -t ansible_docker_test .  

# Run the container, mounting the current directory as a volume
run:
	docker run -it  -v $(PWD):/ansible ansible_docker_test


# Execute the playbook
playbook:
	docker run -it --name victor --rm  --privileged  -v $(PWD):/ansible ansible_docker_test bash -c "ansible-playbook --tags 'rustup' --inventory ansible/hosts --connection=local ansible/main.yml && bash"    #--extra-vars "ansible_become_password=guessit"



xephyr:
	Xephyr -ac -screen 500x500 -br -reset -terminate 2> /dev/null :1 &

envxephyr:
	env DISPLAY=:1 i3
