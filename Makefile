.PHONY = docker install_jenkins install_python run 

docker:
	bash docker_install

install: docker
	@docker-compose build
run: install
	@docker run -d -p 8080:8080 python-http-server-ci-pipeline_jenkins 
	@docker run -d -p 9000:9000 chidstar/python-http-server 
