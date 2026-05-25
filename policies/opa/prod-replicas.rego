package main

deny[msg] {
  input.environment == "prod"
  input.replicaCount < 3
  msg := sprintf(
    "Production must run at least 3 replicas, got %v",
    [input.replicaCount]
  )
}