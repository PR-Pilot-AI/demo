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