# Docker registry to different registry action

For example to pull from GitHub registry and push to OpenShift registry.

## Inputs

```yaml
origin-registry:
  description: 'Registry registry url'
  required: true

origin-image-url:
  description: 'Registry image url'
  required: true

origin-user:
  description: 'Registry user'
  default: "publisher"
  required: false

origin-token:
  description: 'Registry token'
  required: true

target-registry:
  description: 'Registry registry url'
  required: true

target-image-url:
  description: 'Registry image url'
  required: true

target-user:
  description: 'Registry user'
  required: true

target-token:
  description: 'Registry token'
  required: true
```


## Example usage

```yaml
- name: Publish latest docker image to registry
  uses: serucee/docker-registry-to-registry-action@master
  with:
    origin-registry: docker.pkg.github.com
    origin-image-url: docker.pkg.github.com/serucee/docker-registry-to-registry-action/IMAGE_NAME:VERSION
    origin-token: ${{ secrets.GITHUB_TOKEN }}
    target-registry: REGISTRY
    target-image-url: FULL_IMAGE_PATH
    target-user: USER
    target-token: TOKEN
```
