import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation

# Set the dimensions of the grid
grid_size = 50

# Initialize the grid with random values (0 or 1)
grid = np.random.choice([0, 1], size=(grid_size, grid_size))

# Function to update the grid for each frame
def update(data):
    global grid
    new_grid = grid.copy()
    for i in range(grid_size):
        for j in range(grid_size):
            # Count the number of live neighbors
            total = int((grid[i, (j-1)%grid_size] + grid[i, (j+1)%grid_size] +
                         grid[(i-1)%grid_size, j] + grid[(i+1)%grid_size, j] +
                         grid[(i-1)%grid_size, (j-1)%grid_size] + grid[(i-1)%grid_size, (j+1)%grid_size] +
                         grid[(i+1)%grid_size, (j-1)%grid_size] + grid[(i+1)%grid_size, (j+1)%grid_size]))
            
            # Apply Conway's rules
            if grid[i, j] == 1:
                if (total < 2) or (total > 3):
                    new_grid[i, j] = 0
            else:
                if total == 3:
                    new_grid[i, j] = 1
    
    # Update the data of the image
    mat.set_data(new_grid)
    grid = new_grid
    return [mat]

# Set up the figure, the axis, and the plot element
fig, ax = plt.subplots()
mat = ax.matshow(grid, cmap='binary')

# Create the animation
ani = animation.FuncAnimation(fig, update, interval=100, save_count=50)

plt.show()