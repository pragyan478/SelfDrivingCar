The modularity of .cpp and .h files is a big advantage of C++. 
But how can you avoid the multiple declarations?

The solution is to use # ifndef statements, which allow you to implement a technique called inclusion guards.

The ifndef statement stands for "if not defined". When you wrap your header files with #ifndef statements, 
    the compiler will only include a header file if the file has not yet been defined. 
    In the current main.cpp example, the "engine.h" file would be included first. 
    Then the compiler includes "car.h". But "car.h" will try to include "engine.h" again; 
    however, the inclusion guard in the "engine.h" file will ensure that "engine.h" 
    does not get included again.


