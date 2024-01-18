def convert(value, tarsys=2, result=[]):
    result.append(value % tarsys)
    newval = value // tarsys
    if newval != 0:
        convert(newval, tarsys, result)
    return result[::-1]
    

print(convert(10, tarsys=10))
