# Metadata Submitter

Metadata submitter backend code: https://github.com/CSCfi/metadata-submitter
Frontend: https://github.com/CSCfi/metadata-submitter-frontend/

## Installation

### Quick start

    https://github.com/CSCfi/metadata-submitter-helm.git

In `values.yaml` file set following values:

| Parameter | Explanation |
| --------- |  ----------- |
| `auth.idpReferer` | OIDC AUTH endpoint that redirects the request to the application |
| `auth.url` | OIDC claim issuer URL |
| `auth.jwk` | JWK endpoint |
| `auth.oidc` | OIDC endpoint |

    helm install ${NAME} metadata-submitter-helm -n ${NAMESPACE}

### Values that quite probably need modifying

| Parameter | Explanation |
| --------- |  ----------- |
| `mongo.create` | Set to false if using existing database |
| `mongo.hostname` | Hostname of mongo server |
| `mongo.port` | Port of mongo server |
| `mongo.password` | Password of mongo db. If not set and `mongo.create` is `true` random password will be generated |
| `mongo.username` | User of mongo db. If not set and `mongo.create` is `true` random username will be generated |
| `ingress.create` | Create ingress or not |
| `ingress.tls` | Use encrypted traffic with ingress. Requires existing certifcates. |
| `ingress.certSecret` | Kubernetes secret name containing tls certificates |
| `ingress.hostname` | hostname for connection to metadata sumbmitter |

