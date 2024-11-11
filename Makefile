set-to-minikube-docker-env:
	@echo "⚙️ Configuring Docker environment for Minikube..."
	@eval $$(minikube -p minikube docker-env)

docker-build-api: set-to-minikube-docker-env
	@echo "🚪 Building Docker image api:v1..."
	docker build -t api:v1 -f ./deployment/build/api/Dockerfile .


