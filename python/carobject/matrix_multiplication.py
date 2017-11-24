# The current predict state function
# Predicts the next state based on a motion model
def predict_state(state, dt):
    # Assumes a valid state had been passed in
    x = state[0]
    velocity = state[1]
    
    # Assumes a constant velocity model
    new_x = x + velocity*dt
    
    # Create and return the new, predicted state
    predicted_state = [new_x, velocity]
    return predicted_state


# import the matrix file
import matrix

# Initialize a state vector
initial_position = 0 # meters
velocity = 50 # m/s

# Notice the syntax for creating a state column vector ([ [x], [v] ])
# Commas separate these items into rows and brackets into columns
initial_state = matrix.Matrix([ [initial_position], 
                                [velocity] ])
                                
                                
# Define the state transformation matrix
dt = 1
tx_matrix = matrix.Matrix([ [1, dt], 
                            [0, 1] ])

print(tx_matrix)

# The current predict state function
def predict_state_mtx(state, dt):
    ## TODO: Assume that the state passed in is a Matrix object
    ## Using a constant velocity model and a transformation matrix
    ## Create and return the new, predicted state!
    trans_mat = matrix.Matrix([[1, dt], [0, 1]])
    
    predicted_state = trans_mat * state
    
    return predicted_state

# initial state variables
initial_position = 10 # meters
velocity = 30 # m/s

# Initial state vector
initial_state = matrix.Matrix([ [initial_position], 
                                [velocity] ])


print('The initial state is: ' + str(initial_state))


# after 2 seconds make a prediction using the new function
state_est1 = predict_state_mtx(initial_state, 2)

print('State after 2 seconds is: ' + str(state_est1))
                                
