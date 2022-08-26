package main

# Missing labels
deny[msg] {
  input.kind = "Namespace"
  input.apiVersion = "v1"
  not input.metadata.labels
  msg := "Missing labels"
}