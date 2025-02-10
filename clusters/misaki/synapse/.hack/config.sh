kubectl create secret generic synapse -n matrix \
    --from-file=synaps-conf/home-server.yaml \
    --from-file=synaps-conf/log.config \
    --dry-run=client -o yaml > configurations.yaml

sops --encrypt --in-place secrets.yaml
