set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

@setup: venv-setup prek-setup requirements-setup
    echo "Setting up..."

@venv-setup:
    uv venv --clear
    uv sync --all-groups

@pre-commit-setup:
    uv run pre-commit install
    uv run pre-commit autoupdate

@prek-setup:
    uv run prek install -f
    uv run prek autoupdate

@requirements-setup:
    uv export --all-groups --no-hashes  --no-annotate --output-file requirements.txt
    uv export --only-group inference --no-hashes --no-annotate --output-file requirements_inference.txt

@lint:
    uv run ruff format .
    uv run ruff check . --fix
