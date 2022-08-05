# Licensebat GitHub Action

This GitHub action allows you to use Licensebat to check that the licenses of your project's dependencies are valid according to your licensing policy.

The action will fail if it finds an invalid license.

Note that this action uses [job summaries](https://github.blog/2022-05-09-supercharging-github-actions-with-job-summaries/) to report the results of the licenses check.

![job summary](https://user-images.githubusercontent.com/696981/168478953-17dfb662-006e-4f30-81fe-e6b61ba8f5e4.png)

## Inputs

## `dependency-file-path`

**Required** The path of the dependency manifest file (package-lock.json, Cargo.lock, pubspec.lock).

## `licrc-path`

**Optional** `.licrc` file path.  Default `".licrc"`.

## Example usage

```bash
- name: licensebat
  uses: licensebat/licensebat-action@v1
    with:
    dependency-file-path: 'package-lock.json'
```
