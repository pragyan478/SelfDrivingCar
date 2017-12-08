def days_between_dates(y1, m1, d1, y2, m2, d2):
    """
    Calculates the number of days between two dates.
    """
               
    # TODO - by the end of this lesson you will have
    #  completed this function. You do not need to complete
    #  it yet though! 

    # check if current date is later than birthdate
    assert (isDateBefore(y1, m1, d1, y2, m2, d2))
    
    
    return 0



def nextDate(y1, m1, d1):
    mon31 = [1, 3, 5, 7, 8, 10, 12]
    mon30 = [4, 6, 9, 11]
    
def isLeapYear(y1, m1, d1):
    if(m1 == 2):
        if(y1 % 400 == 0):
            return True
        elif(y1 % 100 == 0):
            return False
        elif(y1 % 4 == 0):
            return True
        else:
            return False


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
def test_isDateBefore():
    assert(isDateBefore(2017, 12, 30,
                        2017, 12, 30) == False)
    assert(isDateBefore(2017, 12, 30, 
                        2017, 12, 31) == True)
    assert(isDateBefore(2017, 12, 30, 
                        2018, 1,  1)  == True)
    assert(isDateBefore(2012, 6, 29,
                        2013, 7, 29)  == True)

def test_isLeapYear():
    assert(isLeapYear(2017, 02, 03) == False)
    assert(isLeapYear(1900, 02, 03) == False)
    assert(isLeapYear(2018, 02, 03) == False)
    assert(isLeapYear(2000, 02, 03) == True)




#test_days_between_dates()
test_isLeapYear()

