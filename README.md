# unity-git-starter

A boilerplate template for spinning up Unity projects with Git and Git LFS already configured.

## What's included

- `.gitignore` for Unity
- `.gitattributes` with Git LFS tracking and UnityYAMLMerge configured
- `setup.sh` to initialize Git LFS and configure the UnityYAMLMerge driver locally

## Setup

1. Create a new repo from this template on GitHub
2. Clone it locally
3. Run `./setup.sh` from the repo root
4. Create a new Unity project in Unity Hub pointed at the repo root — Unity will create its own subfolder automatically

## Notes

- Update `UNITY_VERSION` at the top of `setup.sh` to match your installed Unity version, and uncomment the path for your OS (Mac, Windows, or Linux).
- Always do merges locally — GitHub's web UI does not have access to UnityYAMLMerge.
- Git LFS requires a Git LFS-compatible remote. GitHub supports this out of the box.
