---
name: just
description: Run commands using the `just` tool.
---

When asked to run a just recipe, examine the `justfile` script at the root directory to find the available recipes and their descriptions. You can also use the `just -l` command to list available recipes.

Recipes include:

* Setting up the project.
* Syncing dependencies.
* Running all pre-commit hooks.
* Formatting all files in the current directory.
* Linting all files in the current directory.
