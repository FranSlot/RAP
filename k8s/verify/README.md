# Get Local docker registry image
docker pull registry:latest

# Tag flask-echo and flask-hello to be prefixed with localhost:5002/ (so we can use the local registry)
# Get the ID of the flaskalicious docker image 
# docker image list --format "{{.ID}} {{.Repository}}:{{.Tag}}" | grep flaskalicious:latest | head -n 1 | cut -c-12
# One command
# docker tag $(docker image list --format "{{.ID}} {{.Repository}}:{{.Tag}}" | grep flask-hello:latest | head -n 1 | cut -c-12) localhost:5002/flask-hello
# Or by its tag name ... doh
docker image tag flask-echo localhost:5002/flask-echo
docker image tag flask-hello localhost:5002/flask-hello

# Run the local registry on port 5002
docker run --rm -d --publish=5002:5000 registry

# Push the docker image
docker push localhost:5002/flask-echo
docker push localhost:5002/flask-hello

# Use the tagged value in the POD image definition
# localhost:5002/flask-hello

# Test using port forward
kubectl port-forward service/flask-service 2020:8080 & 
kubectl port-forward service/flask-hello-service 2021:8080 & 

curl http://localhost:2020/test
curl http://localhost:2021/test

# Login on Flask Hello
kubectl exec $(kubectl get pod -o=name | grep flask | cut -d/ -f2) -ti sh
kubectl exec $(kubectl get pod -o=name | grep flask-hello | cut -d/ -f2) -ti sh


# Best Practise Python
Visual Studio Code
Detect Identation : Off

# Kubectl completion on MacOSX
## installation
brew install bash-completion
## add to $HOME/.profile
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
## add kubectl completion bash , to $HOME/.bashrc
## register short cut to code completion 
alias k=kubectl
complete -F __start_kubectl k

## if all fails ...
source /usr/local/etc/profile.d/bash_completion.sh