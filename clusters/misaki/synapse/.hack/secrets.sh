kubectl create secret generic synapse-secrets -n matrix \
    --from-file=synaps-conf/registration_shared_secret \
    --from-file=synaps-conf/macaroon_secret_key \
    --dry-run=client -o yaml > ./secrets.yaml

sops --encrypt --in-place secrets.yaml
