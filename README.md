# DevOps Technical Assessment

This project replaces a tag in a file, commits it, and publishes it as a Docker image to `ghcr.io`.

## Content

- **`replace-tag` action** — replaces `old_tag` with `new_tag` in a file.
- **`change-tag.yml`** — runs the action, then commits and pushes the
  change (only if the file actually changed).
- **`build-and-push.yml`** — entry point. Triggered from the Actions tab;
  calls the reusable workflow, then builds and pushes the Docker image.
- **`Dockerfile`** — copies `sample.txt` and prints it on run.

## Usage

**Actions → Build and publish image → Run workflow** (defaults: `sample.txt`, `tag1` → `tag2`).

To verify the published image locally:

```bash
docker run --rm ghcr.io/<owner>/<repo>:latest
# application_version=tag2
```

Thanks a lot Greenbone-Team for the oportunity! :D 
