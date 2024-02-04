# Metadata Submitter

Metadata submitter backend code: https://github.com/CSCfi/metadata-submitter
Frontend: https://github.com/CSCfi/metadata-submitter-frontend/

## Installation

### Quick start

    https://github.com/CSCfi/metadata-submitter-helm.git

In `values.yaml` file set following values:

| Parameter | Explanation |
| --------- |  ----------- |
| `auth.url` | OIDC claim issuer URL |
| `auth.oidc` | OIDC endpoint |
| `auth.id` | OIDC client id |
| `auth.secret` | OIDC client secret |

    helm install ${NAME} metadata-submitter-helm -n ${NAMESPACE}

### Values that quite probably need modifying

| Parameter | Explanation |
| --------- |  ----------- |
| `mongo.create` | Set to false if using existing database |
| `dbConnection.hostname` | Hostname of backend db |
| `dbConnection.port` | Port of backend db |
| `dbConnection.password` | Password of backend db. If not set random password will be generated |
| `dbConnection.username` | User of backend db. If not set random username will be generated |
| `ingress.create` | Create ingress or not |
| `ingress.tls` | Use encrypted traffic with ingress. Requires existing certifcates. |
| `ingress.certSecret` | Kubernetes secret name containing tls certificates |
| `ingress.hostname` | hostname for connection to metadata sumbmitter |

