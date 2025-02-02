# k3s infra

import the public key for secret encryption. 

```sh
gpg --import ./clusters/<cluster_name>/.sops.pub.asc
```

### Add a secret

```sh
kubectl -n default create secret generic basic-auth \
--from-literal=user=admin \
--from-literal=password=change-me \
--dry-run=client \
-o yaml > basic-auth.yaml
```

encrypt the key

```sh
sops --encrypt --in-place basic-auth.yaml
```
