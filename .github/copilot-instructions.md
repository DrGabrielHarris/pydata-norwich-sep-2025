---
name: 'Python Coding Standards'
description: 'Coding standards for Python files'
applyTo: '**/*.py'
---

# Python Coding Standards

## Python Guidelines

- Use the pathlib module to handle all filesystem paths.
- Use absolute imports.
- Prefer small functions that does one thing.

## Naming Conventions

- Use PascalCase for component names, interfaces, and type aliases.
- Use camelCase for variables, functions, and methods.
- Use ALL_CAPS for constants.
- Function name is based on what the function does. Use imperative naming with max 4 words long.
- Variable names should be verbose. Use more words than needed with max 4 words long.

## Style Guide

- Follow the PEP 8 style guide.
- Use double quotation marks for strings.
- Use type hints for all function signatures.
- Separate function arguments on individual lines.

## Docstring Guide

- Use Google convention for docstring formatting.
- Capitalise descriptions.
- End the description line with a period.

## Logging

- Configure the logger output as follows:

```python
logging.basicConfig(
    level=logging.INFO,
    format='[%(asctime)s] %(message)s',
    datefmt='%d/%m/%y %H:%M:%S'
```

- Use f-strings.

## Error Handling

- Use try/catch/else blocks.
- Log errors.
