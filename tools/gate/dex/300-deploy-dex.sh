#!/bin/bash
set -ex

# shellcheck disable=SC2046
helm upgrade \
    --create-namespace \
    --install \
    --namespace=dex \
    dex-aio \
    "./charts/dex-aio" \
    $(./tools/deployment/common/get-values-overrides.sh dex-aio)

./tools/deployment/common/wait-for-pods.sh dex
