---
applyTo: '**'
---

# Project coding standards

## Python Guidelines

- Use the pathlib module to handle all filesystem paths.
- Use absolute imports.
- Prefer small functions that does one thing.

## Naming Conventions

- Use the Google Style Guide
- Function name is based on what the function does. Use imperative naming with max 4 words long.
- Variable names should be verbose. Use more words than needed with max 4 words long.

## Style Guide

- Use PEP8 convention for code.
- Use double quotation marks for strings.
- Use typing hints to function arguments and returns.
- Separate function arguments on individual lines.

## Docstring Guide

- Use Google convention for docstring formatting.
- Use Google convention for Docstring.
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
