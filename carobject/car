import numpy as np
import car

%matplotlib inline

# Create a 2D world of 0's
height = 4
width = 6
world = np.zeros((height, width))

# Define the initial car state
initial_position = [0, 0] # [y, x] (top-left corner)
velocity = [0, 1] # [vy, vx] (moving to the right)

# Create a car object with these initial params
carla = car.Car(initial_position, velocity, world)

print('Carla\'s initial state is: ' + str(carla.state))

# Move in the direction of the initial velocity
carla.move()

# Track the change in state
print('Carla\'s state is: ' + str(carla.state))

# Display the world
carla.display_world()

## TODO: Make carla traverse a 4x4 square path
## Display the result
velocity = [1, 0]
carla = car.Car(initial_position, velocity, world)
for j in range(4):
    for i in range(3):
        carla.move()
    carla.turn_left()

carla.display_world()
