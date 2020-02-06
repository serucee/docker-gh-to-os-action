# Docker registry to different registry action

For example to pull from GitHub repository and push to OpenShift registry.

## Inputs

```yaml
origin-registry:
  description: 'Repository registry url'
  required: true

origin-image-url:
  description: 'Repository image url'
  required: true

origin-user:
  description: 'Repository user'
  default: "publisher"
  required: false

origin-token:
  description: 'Repository token'
  required: true

target-registry:
  description: 'Repository registry url'
  required: true

target-image-url:
  description: 'Repository image url'
  required: true

target-user:
  description: 'Repository user'
  required: true

target-token:
  description: 'Repository token'
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
