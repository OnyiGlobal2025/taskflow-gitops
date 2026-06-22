package main

deny[msg] {
  input.kind == "Deployment"
  input.metadata.namespace == "taskflow-prod"
  input.spec.replicas < 3
  msg := sprintf("Production deployment '%s' must run at least 3 replicas, got %v", [input.metadata.name, input.spec.replicas])
}