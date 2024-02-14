# check-jsonschema-issue-400

Project to simulate [check-jsonschema issue](https://github.com/python-jsonschema/check-jsonschema/issues/400).

## Commands

Build image - in repository root run - `docker build -t check-jsch-400:v1 .`

### Working example

`docker run --rm --entrypoint check-jsonschema check-jsch-400:v1 -v --schemafile schema.json invalid-file.json`

result:
```
Schema validation errors were encountered.
  invalid-file.json::$: Additional properties are not allowed ('wrongField' was unexpected)
  invalid-file.json::$: 'field' is a required property
```

### Not working example

`docker run --rm --entrypoint check-jsonschema check-jsch-400:v1 -v --check-metaschema invalid-file.json`

result:
```
ok -- validation done
The following files were checked:
  invalid-file.json
```