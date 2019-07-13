# mad_ci_cd
Helpers for CI and CD.

# Usage
Clone this repo as a submodule in cicd directory and use in azure-pipelines.yml
file:
```
resources:
  repositories:
    - repository: cicd
      type: github
      name: mateka/mad_ci_cd
      endpoint: endpoint_name

stages:
- template: build_and_test.yml@cicd  # Template reference
  parameters:
    linux_vcpkg_libraries: gtest
    windows_vcpkg_libraries: gtest:x64-windows
```
Before building configure pipeline to clone submodules and fill endpoint name (see [this comment](https://github.com/microsoft/azure-pipelines-agent/issues/1902#issuecomment-432272899)).
