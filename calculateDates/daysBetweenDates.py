def days_between_dates(y1, m1, d1, y2, m2, d2):
    """
    Calculates the number of days between two dates.
    """
    
    # TODO - by the end of this lesson you will have
    #  completed this function. You do not need to complete
    #  it yet though! 
    
    return 0



def isDateBefore (y1, m1, d1, y2, m2, d2):
    if(y1 < y2):
        return True
    elif(y1 == y2):
        if(m1 < m2):
            return True
        if(m1 == m2):
            if(d1 < d2):
                return True
            else:
                return False
    return False


def test_days_between_dates():
    
    # test same day
    assert(days_between_dates(2017, 12, 30,
                              2017, 12, 30) == 0)
    # test adjacent days
    assert(days_between_dates(2017, 12, 30, 
                              2017, 12, 31) == 1)
    # test new year
    assert(days_between_dates(2017, 12, 30, 
                              2018, 1,  1)  == 2)
    # test full year difference
    assert(days_between_dates(2012, 6, 29,
                              2013, 7, 29)  == 365)
    
    print("Congratulations! Your days_between_dates")
    print("function is working correctly!")
    
#test_days_between_dates()
assert(isDateBefore(2017, 12, 30,
                    2017, 12, 30) == False)
assert(isDateBefore(2017, 12, 30, 
                    2017, 12, 31) == True)
# test new year
assert(isDateBefore(2017, 12, 30, 
                    2018, 1,  1)  == True)
# test full year difference
assert(isDateBefore(2012, 6, 29,
                    2013, 7, 29)  == True)

