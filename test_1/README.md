## Deployment of ubuntu containers with SSH

Execute the playbook with the following command:
	`$ ansible-playbook -i inventory -e "number=N" main.yml` where N is the number of containers to create.