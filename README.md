# Terraform demo

this demo project allow to create and AKS resource, into Azure.

Using a service principal app.

## Pre-requisites

Fill the variables request by terraform into the template `load_variables_template.sh`

and source the variables with the command

`source load_variables_template.sh`

## Plan and apply your variables

execute the terraform init/plan/apply lifecycle and enjoy the project


# Spring Boot Application Helm Chart Example

## Build and push docker image

Rename ```image``` in demoweb/docker-compose.yml.

```yaml
build:
    context: .
image: binblee/springboot-helm-chart
```

Build docker image use docker-compose command.

```
cd demoweb
docker-compose build
docker push xxxx
```

If you prefer classic docker command line, run these:

```
cd demoweb
docker build -t xxxx .
docker push xxxx
```

## Deploy using helm

Rename image ```image.repository``` and ```tag``` in demoweb/charts/values.yaml.

```yaml
image:
  repository: binblee/springboot-helm-chart
  tag: openjdk-9-jre
```

You should have a running Kubernetes cluster and [helm installed](https://docs.helm.sh/using_helm/#installing-helm) before proceed.

Deploy application using helm.

```
cd demoweb/charts
helm upgrade demo -n springboot-demoweb ./springboot-demoweb/ 
```
