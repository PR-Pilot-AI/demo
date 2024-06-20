# Example: Game of Life
In [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), a grid of cells evolves over time based on a set of rules. The rules are simple, but the patterns that emerge can be complex and interesting.

This example demonstrates how to create a simple implementation of Conway's Game of Life using PR Pilot:

```shell
# Implement game of life in new PR
pilot --sync --verbose task "Create game-of-life/gol.py, which plays a random game of life every time it is run."
# Create dependency file
pilot --sync --verbose task "Identify dependencies in game-of-life/gol.py, find their latest versions and create a pyproject.toml file next to it."
# Run this command as long as poetry lock is not working
while ! poetry lock; do
  pilot --sync --verbose task -f verify.md.jinja2
done
poetry lock
poetry install
poetry run python gol.py
```

## How it works

Running [run.sh](./run.sh) will:
1. Create a new PR with a Python script that plays a random game of life.
2. Create a `pyproject.toml` file with the latest versions of the dependencies.
3. Verify the installation by letting PR Pilot run `poetry lock` and `poetry install` until it works.
4. Run the script to see the animation of the game of life.

## How PR Pilot makes this easy

- A new PR is automatically created for you to review the code changes
- Using the `--sync` flag, your local repo will automatically sync with the PR branch
- PR Pilot will handle the installation of dependencies and fix any errors that occur

## Example output

Running the example script `./run.sh` in the `game-of-life` directory should produce the following output:

```bash
➜  game-of-life git:(main) ./run.sh 
✔ Task created: 0677bc6f-ca8b-44e5-bfb8-c26c4678084f (0:00:00.00)
✔ Opened Pull Request: https://github.com/PR-Pilot-AI/demo/pull/14 (0:00:19.99)
✔ Opened Pull Request: https://github.com/PR-Pilot-AI/demo/pull/14 (0:00:00.00)
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ I have created the game-of-life/gol.py file, which plays a random Game of Life every time it is run. The implementation includes generating a random grid and updating it according to Conway's Game of Life rules. You can run │
│ the script to see the animation of the Game of Life.                                                                                                                                                                            │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
✔ Pull latest changes from implement-random-game-of (0:00:02.60)
✔ Task created: 1f04298e-3b4f-49e1-918f-ca6760d858b2 (0:00:00.00)
✔ Update dependencies and create pyproject.toml for game-of-life/gol.py (0:00:15.72)
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ I have created a pyproject.toml file in the game-of-life directory with the latest versions of the dependencies numpy and matplotlib. The file includes the following content:                                                  │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│  [build-system]                                                                                                                                                                                                                 │
│  requires = ["setuptools>=42", "wheel"]                                                                                                                                                                                         │
│                                                                                                                                                                                                                                 │
│  [project]                                                                                                                                                                                                                      │
│  name = "game-of-life"                                                                                                                                                                                                          │
│  version = "0.1.0"                                                                                                                                                                                                              │
│  description = "A simple implementation of Conway's Game of Life"                                                                                                                                                               │
│                                                                                                                                                                                                                                 │
│  [project.dependencies]                                                                                                                                                                                                         │
│  numpy = "^1.26.4"                                                                                                                                                                                                              │
│  matplotlib = "^3.8.3"                                                                                                                                                                                                          │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│ This should help manage the dependencies for the project effectively.                                                                                                                                                           │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
✔ Pull latest changes from implement-random-game-of (0:00:02.51)

[tool.poetry] section not found in /Users/mlamina/code/demo/game-of-life/pyproject.toml
❌  Running shell command: ['poetry', 'lock'] (0:00:00.26)
❌  Running shell command: ['poetry', 'install'] (0:00:00.26)
✔ Task created: 00bd29b4-7f98-4eae-8740-b55bc5669bd9 (0:00:00.00)
✔ Fix "tool.poetry" section not found in pyproject.toml in game-of-life directory (0:00:15.62)
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ The issue was caused by the absence of the [tool.poetry] section in the pyproject.toml file. I have added this section with the necessary metadata.                                                                             │
│                                                                                                                                                                                                                                 │
│ Poetry should now be able to manage the dependencies correctly.                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│ Poetry looks good to go!                                                                                                                                                                                                        │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
✔ Pull latest changes from implement-random-game-of (0:00:02.55)

The Poetry configuration is invalid:
  - The fields ['authors'] are required in package mode.

❌  Running shell command: ['poetry', 'lock'] (0:00:00.28)
❌  Running shell command: ['poetry', 'install'] (0:00:00.28)
✔ Task created: 28ae514e-fb39-4d28-99f4-36b1d0e54f22 (0:00:00.00)
✔ Fix missing 'authors' field in Poetry configuration (0:00:17.62)
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ The issue was caused by a missing authors field in the pyproject.toml file. I have added the required field to resolve the error.                                                                                               │
│                                                                                                                                                                                                                                 │
│                                                                                                          Changes made:                                                                                                          │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│  [tool.poetry]                                                                                                                                                                                                                  │
│  name = "game-of-life"                                                                                                                                                                                                          │
│  version = "0.1.0"                                                                                                                                                                                                              │
│  description = "A simple implementation of Conway's Game of Life"                                                                                                                                                               │
│  authors = ["Your Name <your.email@example.com>"]                                                                                                                                                                               │
│                                                                                                                                                                                                                                 │
│                                                                                                                                                                                                                                 │
│ Poetry should now be configured correctly. Please try running it again. If dependencies are installed successfully, Poetry looks good to go!                                                                                    │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
✔ Pull latest changes from implement-random-game-of (0:00:02.48)
Updating dependencies
Resolving dependencies... (0.1s)

The current project's supported Python range (>=3.8,<4.0) is not compatible with some of the required packages Python requirement:
  - numpy requires Python >=3.9, so it will not be satisfied for Python >=3.8,<3.9

Because no versions of numpy match >1.26.4,<2.0.0
 and numpy (1.26.4) requires Python >=3.9, numpy is forbidden.
So, because game-of-life depends on numpy (^1.26.4), version solving failed.

  • Check your dependencies Python requirement: The Python requirement can be specified via the `python` or `markers` properties
    
    For numpy, a possible solution would be to set the `python` property to ">=3.9,<4.0"

    https://python-poetry.org/docs/dependency-specification/#python-restricted-dependencies,
    https://python-poetry.org/docs/dependency-specification/#using-environment-markers
❌  Running shell command: ['poetry', 'lock'] (0:00:00.49)
❌  Running shell command: ['poetry', 'install'] (0:00:00.49)
✔ Task created: 7916848d-b21c-4092-8b85-c565f65096c0 (0:00:00.00)
✔ Resolve Python version compatibility issue with numpy in game-of-life project (0:00:15.54)
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────── Result ─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ The issue was due to the Python version requirement in the pyproject.toml file being incompatible with the required numpy package. I have updated the Python version requirement to >=3.9,<4.0 to resolve this.                 │
│                                                                                                                                                                                                                                 │
│ Poetry should now be able to resolve dependencies successfully.                                                                                                                                                                 │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
✔ Pull latest changes from implement-random-game-of (0:00:02.61)
Updating dependencies
Resolving dependencies... (0.4s)

Writing lock file
Updating dependencies
Resolving dependencies... (0.3s)
Installing dependencies from lock file

No dependencies to install or update

Installing the current project: game-of-life (0.1.0)
Warning: The current project could not be installed: No file/folder found for package game-of-life
If you do not want to install the current project use --no-root.
If you want to use Poetry only for dependency management but not for packaging, you can disable package mode by setting package-mode = false in your pyproject.toml file.
In a future version of Poetry this warning will become an error!
/Users/mlamina/code/demo/game-of-life/gol.py:47: UserWarning: You passed in an explicit save_count=50 which is being ignored in favor of frames=10.
  ani = animation.FuncAnimation(fig, update, fargs=(img, grid, GRID_SIZE,),
/Users/mlamina/code/demo/game-of-life/gol.py:47: UserWarning: You passed in an explicit save_count=50 which is being ignored in favor of frames=10. 
```

### Files Created

The files created will look something like this:

```python
# gol.py

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation

# Set the dimensions of the grid
GRID_SIZE = 50

# Function to create a random grid

def random_grid(size):
    return np.random.choice([0, 1], size*size, p=[0.8, 0.2]).reshape(size, size)

# Function to update the grid according to the rules of Game of Life

def update(frameNum, img, grid, size):
    newGrid = grid.copy()
    for i in range(size):
        for j in range(size):
            # Compute the number of live neighbors
            total = int((grid[i, (j-1)%size] + grid[i, (j+1)%size] +
                         grid[(i-1)%size, j] + grid[(i+1)%size, j] +
                         grid[(i-1)%size, (j-1)%size] + grid[(i-1)%size, (j+1)%size] +
                         grid[(i+1)%size, (j-1)%size] + grid[(i+1)%size, (j+1)%size]))

            # Apply Conway's rules
            if grid[i, j] == 1:
                if (total < 2) or (total > 3):
                    newGrid[i, j] = 0
            else:
                if total == 3:
                    newGrid[i, j] = 1

    # Update data
    img.set_data(newGrid)
    grid[:] = newGrid[:]
    return img,

# Main function

def main():
    # Create a random grid
    grid = random_grid(GRID_SIZE)

    # Set up the animation
    fig, ax = plt.subplots()
    img = ax.imshow(grid, interpolation='nearest')
    ani = animation.FuncAnimation(fig, update, fargs=(img, grid, GRID_SIZE,),
                                  frames=10, interval=200, save_count=50)

    plt.show()

if __name__ == '__main__':
    main()
```

```toml
# pyproject.toml
[build-system]
requires = ["setuptools>=42", "wheel"]

[tool.poetry]
name = "game-of-life"
version = "0.1.0"
description = "A simple implementation of Conway's Game of Life"
authors = ["Your Name <your.email@example.com>"]

[tool.poetry.dependencies]
python = ">=3.9,<4.0"
numpy = "^1.26.4"
matplotlib = "^3.8.3"
```