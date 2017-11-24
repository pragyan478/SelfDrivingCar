import numpy as np
import car
import color

%matplotlib inline

# Auto-reload function so that this notebook keeps up with 
# changes in the class file 
%load_ext autoreload
%autoreload 2


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


#define colors and print them out
color1 = color.Color(250, 0, 0)
print(color1)

color2 = color.Color(0, 50, 200)
print(color2)

#add the two colors and visualize the result!
# Add the two colors to create a *new* color object
new_color = color1 + color2
new_class = color.Color(new_color[0], new_color[1], new_color[2])
print(new_class)



