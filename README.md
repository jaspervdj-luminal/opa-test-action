# opa-test-action

GitHub action that just uses a tiny docker image to run `opa test` with the
provided arguments.  Example:

```yaml
on: [push]

jobs:
  opa_test_job:
    runs-on: ubuntu-latest
    name: OPA test
    steps:
    - uses: actions/checkout@master
    - name: OPA test
      id: opa-test
      uses: jaspervdj-luminal/opa-test-action@v0.0.1
      with:
        args: 'lib test'
```
