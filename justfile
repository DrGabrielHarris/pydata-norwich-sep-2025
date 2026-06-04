set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]

@setup: uv-sync prek-setup
    echo "Setting up the project by syncing dependencies and installing pre-commit hooks..."

@uv-sync:
    echo "Syncing all dependencies using uv and exporting requirements files..."
    uv sync --all-groups
    uv export --all-groups --no-hashes  --no-annotate --output-file requirements.txt
    uv export --only-group inference --no-hashes --no-annotate --output-file requirements_inference.txt

@prek-setup:
    echo "Installing pre-commit hooks and auto-updating them..."
    uv run prek install -f
    uv run prek auto-update

@prek:
    echo "Running all pre-commit hooks on all files in the current directory..."
    uv run prek run --all-files

@ruff:
    echo "Formatting all files in the current directory...."
    uv run ruff format .

    echo "Linting files in the current directory and fixing any fixable errors..."
    uv run ruff check . --fix
