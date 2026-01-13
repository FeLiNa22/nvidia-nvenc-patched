# nvidia-nvenc-patched
A NVENC patched docker container that removes restriction on the maximum number of simultaneous NVENC video encoding sessions on nvidia GPUs

## Docker Image
The Docker image is automatically built and published to Docker Hub at `felina22/nvidia-nvenc-patched` whenever a new tag is pushed to the repository.

### Using the Docker Image
```bash
docker pull felina22/nvidia-nvenc-patched:latest
# Or pull a specific version
docker pull felina22/nvidia-nvenc-patched:v1.0.0
```

## CI/CD Setup
The repository uses GitHub Actions to automatically build and deploy Docker images.

### Prerequisites
To enable automatic deployment, the following secrets must be configured in the GitHub repository:
- `DOCKER_USERNAME`: Your Docker Hub username
- `DOCKER_PASSWORD`: Your Docker Hub password or access token

### Triggering a Build
To trigger a new build and deployment:
1. Create and push a new tag:
   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```
2. The GitHub Actions workflow will automatically:
   - Build the Docker image
   - Tag it with the version tag and `latest`
   - Push it to `felina22/nvidia-nvenc-patched` on Docker Hub
