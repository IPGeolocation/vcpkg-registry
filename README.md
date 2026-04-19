# IPGeolocation vcpkg Registry

Custom vcpkg registry for official IPGeolocation packages.

Current packages:

- `ipgeolocation-cpp-sdk`

Use it from a consumer project with a `vcpkg-configuration.json` like:

```json
{
  "default-registry": {
    "kind": "builtin",
    "baseline": "<vcpkg-builtin-baseline>"
  },
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/IPGeolocation/vcpkg-registry",
      "baseline": "<ipgeolocation-vcpkg-registry-baseline>",
      "packages": [
        "ipgeolocation-cpp-sdk"
      ]
    }
  ]
}
```

Then add the package to your project manifest:

```json
{
  "name": "my-app",
  "version-string": "0.1.0",
  "dependencies": [
    "ipgeolocation-cpp-sdk"
  ]
}
```
