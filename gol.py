import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation


def random_grid(N):
    """Returns a grid of NxN random values"""
    return np.random.choice([255, 0], N*N, p=[0.2, 0.8]).reshape(N, N)


def update(frameNum, img, grid, N):
    # Copy grid since we require 8 neighbors for calculation and we go line by line
    newGrid = grid.copy()
    for i in range(N):
        for j in range(N):
            # Compute 8-neghbor sum
            total = int((grid[i, (j-1)%N] + grid[i, (j+1)%N] +
                         grid[(i-1)%N, j] + grid[(i+1)%N, j] +
                         grid[(i-1)%N, (j-1)%N] + grid[(i-1)%N, (j+1)%N] +
                         grid[(i+1)%N, (j-1)%N] + grid[(i+1)%N, (j+1)%N])/255)
            # Apply Conway's rules
            if grid[i, j] == 255:
                if (total < 2) or (total > 3):
                    newGrid[i, j] = 0
            else:
                if total == 3:
                    newGrid[i, j] = 255
    # Update data
    img.set_data(newGrid)
    grid[:] = newGrid[:]
    return img,


def main():
    # Set grid size
    N = 100
    # Set animation update interval
    updateInterval = 50

    # Declare grid
    grid = random_grid(N)

    # Set up animation
    fig, ax = plt.subplots()
    img = ax.imshow(grid, interpolation='nearest')
    ani = animation.FuncAnimation(fig, update, fargs=(img, grid, N, ),
                                  frames=10,
                                  interval=updateInterval,
                                  save_count=50)

    plt.show()


if __name__ == '__main__':
    main()