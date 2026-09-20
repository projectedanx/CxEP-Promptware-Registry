#!/bin/bash
yamllint .
find prompts -name '*.yml' -print0 | xargs -0 -r check-jsonschema --schemafile schemas/prp_schema.yml
