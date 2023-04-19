# argocd-gitcrypt

Custom argocd image with **git-crypt** binary.

This is an attempt to implement transparent PGP encryption support for ArgoCD using git-crypt.

### preambular

The following docker image contains [small wrapper script](git-wrapper) for git to automatically unlock repository after fetching using git-crypt.

### Installation:

Update your deploy/argocd-repo-server

```bash
kubectl -n argocd set image deploy/argocd-repo-server argocd-repo-server=ghcr.io/niklasdoerfler/argocd-gitcrypt:latest
```
