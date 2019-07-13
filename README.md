# mad_ci_cd
Helpers for CI and CD.

# Usage
Clone this repo as a submodule in cicd directory and use in azure-pipelines.yml
file:
```
stages:
- template: cicd/build_and_test.yml  # Template reference
  parameters:
    linux_vcpkg_libraries: gtest
    windows_vcpkg_libraries: gtest:x64-windows
```
