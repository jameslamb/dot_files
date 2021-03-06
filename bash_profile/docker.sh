##########
# Docker #
##########

# [description] remove ALL local docker containers
# [usage] nuke_all_dockers
# [ref] https://github.com/docker/machine/issues/1779
nuke_all_dockers() {
	# kill running containers
	docker kill $(docker ps -qa)
	# delete them
	docker rm -v $(docker ps -qa)
	# remove all images
	docker rmi -f $(docker images -q)
}

# [description] kill the most recent container you started
# [usage] kill_most_recent_container
kill_most_recent_container() {
    docker kill $(docker ps -ql)
}
