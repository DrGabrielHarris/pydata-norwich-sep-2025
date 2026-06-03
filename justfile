set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

@setup: sync prek-setup
    echo "Setting up..."

@sync:
    uv sync --all-groups
    uv export --all-groups --no-hashes  --no-annotate --output-file requirements.txt
    uv export --only-group inference --no-hashes --no-annotate --output-file requirements_inference.txt

@prek-setup:
    uv run prek install -f
    uv run prek auto-update

@prek:
    uv run prek run --all-files

@ruff:
    uv run ruff format .
    uv run ruff check . --fix
