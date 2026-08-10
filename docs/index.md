# TaskFlow GitOps

This repo is the declarative source of truth for what runs on the TaskFlow platform. ArgoCD watches it and keeps the cluster continuously reconciled to match.

## What this is

- **Desired state** — Helm-packaged manifests describing every workload, per environment.
- **Reconciled automatically** — ArgoCD detects any drift between this repo and the cluster and corrects it.
- **Multi-environment** — dev, staging, and prod are each templated from a single ArgoCD ApplicationSet.

## How it fits

Infrastructure comes from `taskflow-infra`. Trusted images come from `taskflow-app`. This repo joins them: it declares which image runs in which environment, and ArgoCD makes it so.

## Where to go next

- [Architecture](architecture.md) — the ApplicationSet model and promotion flow.