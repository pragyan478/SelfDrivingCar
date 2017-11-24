import matplotlib.pyplot as plt

""" The Car class defines a car's movement and keeps track of its state.

    The class includes init, move, and display functions.
    This class assumes a constant velocity motion model and the state
    of the car includes the car's position, and it's velocity.

    Attributes:
        state: A list of the car's current position [y, x] and velocity [vy, vx]
        world: The world that the car is moving within (a 2D list)
"""

class Car(object):
    
    
    # Car constructor 
    # Called when you write car.Car(_, _, _)
    def __init__(self, position, velocity, world, color = 'r'):
        """Initializes Car with some position, velocity, and a world to traverse."""
        
        # Initialize the state
        # Position is a list [y, x] and so is velocity [vy, vx]
        self.state = [position, velocity]
        self.world = world # world is a 2D list of values that range from 0-1
        
        # Set the color
        self.color = color
        
        # Initalize the path
        self.path = []
        self.path.append(position)
        

    # Move function
    def move(self, dt=1):
        """ The move function moves the car in the direction of the velocity and 
            updates the state.
            It assumes a circular world and a default dt = 1 (though dt can be any 
            non-negative integer).
            """
        
        height = len(self.world)
        width = len(self.world[0])
        
        position = self.state[0]
        velocity = self.state[1]

        # Predict the new position [y, x] based on velocity [vx, vy] and time, dt
        predicted_position = [
            (position[0] + velocity[0]*dt) % height, # default dt = 1
            (position[1] + velocity[1]*dt) % width
        ]
        
        # Update the state
        self.state = [predicted_position, velocity]
        
        # Every time the robot moves, add the new position to the path
        self.path.append(predicted_position)
        
    
    # Turn left function
    def turn_left(self):
        """ Turning left "rotates" the velocity values, so vy = -vx, and vx = vy.
        
            For example, if a car is going right at 1 world cell/sec this means 
            vy = 0, vx = 1, 
            and if it turns left, then it should be moving upwards on the world grid 
            at the same speed! 
            And up is vy = -1 and vx = 0
            """
        
        # Change the velocity
        velocity = self.state[1]
        
        predicted_velocity = [
            -velocity[1],
            velocity[0]
        ]
        
        # Update the state velocity
        self.state[1] = predicted_velocity
   

    # Turn right function
    def turn_right(self):
        velocity = self.state[1]
        update_vel = [ velocity[1], -velocity[0] ]
        self.state[1] = update_vel
        
    

    # Helper function for displaying the world + robot position
    # Assumes the world in a 2D numpy array and position is in the form [y, x]
    # path is a list of positions, and it's an optional argument
    def display_world(self):
        
        # Store the current position of the car
        position = self.state[0]
        
        # Plot grid of values + initial ticks
        plt.matshow(self.world, cmap='gray')

        # Set minor axes in between the labels
        ax=plt.gca()
        rows = len(self.world)
        cols = len(self.world[0])

        ax.set_xticks([x-0.5 for x in range(1,cols)],minor=True )
        ax.set_yticks([y-0.5 for y in range(1,rows)],minor=True)

        # Plot grid on minor axes in gray (width = 2)
        plt.grid(which='minor',ls='-',lw=2, color='gray')

        # Create a 'x' character that represents the car
        # ha = horizontal alignment, va = verical
        ax.text(position[1], position[0], 'x', ha='center', va='center', color=self.color, fontsize=30)
            
        # Draw path if it exists
        if(len(self.path) > 1):
            # loop through all path indices and draw a dot (unless it's at the car's location)
            for pos in self.path:
                if(pos != position):
                    ax.text(pos[1], pos[0], '.', ha='center', va='baseline', color=self.color, fontsize=30)

        # Display final result
        plt.show()

        
        
'''
The color class creates a color from 3 values, r, g, and b (red, green, and blue).

attributes:
    r - a value between 0-255 for red
    g - a value between 0-255 for green
    b - a value between 0-255 for blue
'''

class Color(object):

    # Initializes a color with rgb values
    def __init__(self, r, g, b):
        self.r = r
        self.g = g
        self.b = b

    # Called when a Color object is printed out
    def __repr__(self):
        '''Display a color swatch and returns a text description of r,g,b values'''
        
        plt.imshow([[(self.r/255, self.g/255, self.b/255)]])
        
        return 'r, g, b = ' + str(self.r) + ', ' + str(self.g) + ', ' + str(self.b)
    
    #operator overloading
    ## TODO: Complete this add function to add two colors together
    def __add__(self, other):
        '''Adds the r, g, and b components of each color together 
           and averaging them. 
           The new Color object, with these averaged rgb values, 
           is returned.'''

        new_r = (self.r+other.r)/2
        new_g = (self.g+other.g)/2.
        new_b = (self.b+other.b)/2.
        
        return [new_r, new_g, new_b]


