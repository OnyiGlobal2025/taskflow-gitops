package main

deny[msg] {
  not input.resources.limits.cpu
  msg := "CPU limit must be set for all deployments"
}

deny[msg] {
  not input.resources.limits.memory
  msg := "Memory limit must be set for all deployments"
}