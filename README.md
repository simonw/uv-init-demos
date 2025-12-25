# uv init demos

This repository contains examples of projects created with different `uv init` arguments.

Generated using: uv 0.9.18

## Projects

### [uv-init](./uv-init/)

```bash
uv init uv-init
```

Files:

#### .python-version

```
3.12
```

#### README.md

```markdown
```

#### main.py

```python
def main():
    print("Hello from uv-init!")


if __name__ == "__main__":
    main()
```

#### pyproject.toml

```toml
[project]
name = "uv-init"
version = "0.1.0"
description = "Add your description here"
readme = "README.md"
requires-python = ">=3.12"
dependencies = []
```

### [uv-init-package](./uv-init-package/)

```bash
uv init uv-init-package --package
```

Files:

#### .python-version

```
3.12
```

#### README.md

```markdown
```

#### pyproject.toml

```toml
[project]
name = "uv-init-package"
version = "0.1.0"
description = "Add your description here"
readme = "README.md"
authors = [
    { name = "Demo User", email = "github-actions[bot]@users.noreply.github.com" }
]
requires-python = ">=3.12"
dependencies = []

[project.scripts]
uv-init-package = "uv_init_package:main"

[build-system]
requires = ["uv_build>=0.9.18,<0.10.0"]
build-backend = "uv_build"
```

#### src/uv_init_package/__init__.py

```python
def main() -> None:
    print("Hello from uv-init-package!")
```

### [uv-init-no-package](./uv-init-no-package/)

```bash
uv init uv-init-no-package --no-package
```

Files:

#### .python-version

```
3.12
```

#### README.md

```markdown
```

#### main.py

```python
def main():
    print("Hello from uv-init-no-package!")


if __name__ == "__main__":
    main()
```

#### pyproject.toml

```toml
[project]
name = "uv-init-no-package"
version = "0.1.0"
description = "Add your description here"
readme = "README.md"
requires-python = ">=3.12"
dependencies = []
```

### [uv-init-app](./uv-init-app/)

```bash
uv init uv-init-app --app
```

Files:

#### .python-version

```
3.12
```

#### README.md

```markdown
```

#### main.py

```python
def main():
    print("Hello from uv-init-app!")


if __name__ == "__main__":
    main()
```

#### pyproject.toml

```toml
[project]
name = "uv-init-app"
version = "0.1.0"
description = "Add your description here"
readme = "README.md"
requires-python = ">=3.12"
dependencies = []
```

### [uv-init-lib](./uv-init-lib/)

```bash
uv init uv-init-lib --lib
```

Files:

#### .python-version

```
3.12
```

#### README.md

```markdown
```

#### pyproject.toml

```toml
[project]
name = "uv-init-lib"
version = "0.1.0"
description = "Add your description here"
readme = "README.md"
authors = [
    { name = "Demo User", email = "github-actions[bot]@users.noreply.github.com" }
]
requires-python = ">=3.12"
dependencies = []

[build-system]
requires = ["uv_build>=0.9.18,<0.10.0"]
build-backend = "uv_build"
```

#### src/uv_init_lib/__init__.py

```python
def hello() -> str:
    return "Hello from uv-init-lib!"
```

#### src/uv_init_lib/py.typed

```
```

### [uv-init-bare](./uv-init-bare/)

```bash
uv init uv-init-bare --bare
```

Files:

#### pyproject.toml

```toml
[project]
name = "uv-init-bare"
version = "0.1.0"
requires-python = ">=3.12"
dependencies = []
```

