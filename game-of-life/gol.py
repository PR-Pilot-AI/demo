# Conway's Game of Life

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation

# Set grid size
GRID_SIZE = 50

# Initialize grid with random values
grid = np.random.choice([0, 1], size=(GRID_SIZE, GRID_SIZE))

# Function to update the grid

def update(data):
    global grid
    new_grid = grid.copy()
    for i in range(GRID_SIZE):
        for j in range(GRID_SIZE):
            # Count the number of live neighbors
            total = int((grid[i, (j-1)%GRID_SIZE] + grid[i, (j+1)%GRID_SIZE] +
                         grid[(i-1)%GRID_SIZE, j] + grid[(i+1)%GRID_SIZE, j] +
                         grid[(i-1)%GRID_SIZE, (j-1)%GRID_SIZE] + grid[(i-1)%GRID_SIZE, (j+1)%GRID_SIZE] +
                         grid[(i+1)%GRID_SIZE, (j-1)%GRID_SIZE] + grid[(i+1)%GRID_SIZE, (j+1)%GRID_SIZE]))
            
            # Apply Conway's rules
            if grid[i, j] == 1:
                if (total < 2) or (total > 3):
                    new_grid[i, j] = 0
            else:
                if total == 3:
                    new_grid[i, j] = 1
    
    # Update data
    mat.set_data(new_grid)
    grid = new_grid
    return [mat]

# Set up animation
fig, ax = plt.subplots()
mat = ax.matshow(grid)
ani = animation.FuncAnimation(fig, update, interval=100, save_count=50)

plt.show()
