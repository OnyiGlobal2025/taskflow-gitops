package main

deny[msg] {
  input.image.tag == "latest"
  msg := "Image tag must be a specific version or Git SHA, not latest"
}