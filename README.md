# Licensebat GitHub Action

This GitHub action allows you to use Licensebat to check the that the licenses of your project's dependencies are valid according to your licensing policy.

The action will fail if it finds an invalid license.

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
