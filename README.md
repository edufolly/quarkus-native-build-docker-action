# quarkus-native-build-docker-action

Action to build a native executable from your Quarkus app.

A *app-runner* binary file will be generated after the execution of this action.

### Parameters

| Argument   | Description |
|--------|-------------|
| outputName  | Name of the resulting executable binary file. _Required_  |

### Exemple d'utilisation

```
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout the code
        uses: actions/checkout@latest
      - name: Build native executable and upload it as an artifact
        uses: edufolly/quarkus-native-build-docker-action@master
        with:
          outputName: myapp-runner
      - name: Upload native executable
        uses: actions/upload-artifact@v1
        with:
          name: native-executable
          path: myapp-runner
```
