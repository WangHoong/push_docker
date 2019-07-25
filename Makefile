
deploy:
	@docker pull registry.cn-beijing.aliyuncs.com/fx/push-server
	@docker-compose up -d
deploy_stop:
	@docker-compose  stop
