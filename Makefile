##############################################
# Make File Spec
# https://www.gnu.org/software/make/
# https://www.gnu.org/software/make/manual/html_node/Special-Targets.html
##############################################


# build and install eze package and docker image
docker: docker build --tag fib-cli .

# clean up docker images, remove all unused images
docker-clean: docker system prune -f


# release docker image
release-docker: docker build --tag fib-cli . -t riversafe/fib-cli:0.1 -t riversafe/fib-cli:latest
	docker push riversafe/fib-cli:0.1
	docker push riversafe/fib-cli:latest



all: docker

.DEFAULT_GOAL := all
