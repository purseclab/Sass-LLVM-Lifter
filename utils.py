DEBUG=True
# DEBUG=False

def dprint(*args, **kwargs):
    if DEBUG:
        print("DEBUG: ", *args, **kwargs)



class UnsupportedOperatorException(Exception):
    pass

class InvalidTypeException(Exception):
    pass

class InvalidSyntaxException(Exception):
    pass
