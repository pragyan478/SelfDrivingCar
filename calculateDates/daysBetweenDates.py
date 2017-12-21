def days_between_dates(y1, m1, d1, y2, m2, d2):
    """
    Calculates the number of days between two dates.
    """
               
    # TODO - by the end of this lesson you will have
    #  completed this function. You do not need to complete
    #  it yet though! 

    # check if current date is later than birthdate
    days = 0
    if(isDateBefore(y1, m1, d1, y2, m2, d2) == False):
        if(y1 == y2 and m1 == m2 and d1 == d2):
            return 0;
        else:
            assert isDateBefore(y1, m1, d1, y2, m2, d2)
            
    while(isDateBefore(y1, m1, d1, y2, m2, d2)):
        y1, m1, d1 = nextDate(y1, m1, d1)
        days += 1
    
    return days


def nextDate(y1, m1, d1):
    mon31 = [1, 3, 5, 7, 8, 10, 12]
    mon30 = [4, 6, 9, 11]

    if m1 in mon31:
        if(d1 == 31):
            if(m1 == 12):
                return (y1+1, 1, 1)
            else:
                return (y1, m1+1, 1)
        else:
            return (y1, m1, d1+1)

    elif m1 in mon30:
        if(d1 == 30):
            if(m1 == 12):
                return (y1+1, 1, 1)
            else:
                return (y1, m1+1, 1)
        else:
            return (y1, m1, d1+1)

    #february
    else :
        if(isLeapYear(y1, m1, d1) == True):
            if(d1 == 29):
                return (y1, m1+1, 1)
            return (y1, m1, d1+1)

        else :
            if(d1 == 28):
                return (y1, m1+1, 1)
            return (y1, m1, d1+1)


    
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
    print(days_between_dates(2012, 6, 29, 2013, 7, 29))
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


def test():
    test_cases = [((2012,1,1,2012,2,28), 58), 
                  ((2012,1,1,2012,3,1), 60),
                  ((2011,6,30,2012,6,30), 366),
                  ((2011,1,1,2012,8,8), 585 ),
                  ((1900,1,1,1999,12,31), 36523)]
    
    for (args, answer) in test_cases:
        result = days_between_dates(*args)
        if result != answer:
            print "Test with data:", args, "failed"
            print("result = ", result)
        else:
            print "Test case passed!"

test()

#test_days_between_dates()
#test_isLeapYear()

