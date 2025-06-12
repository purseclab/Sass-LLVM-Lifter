DEBUG=True
# DEBUG=False

def dprint(*args, **kwargs):
    if DEBUG:
        print("DEBUG: ", *args, **kwargs)

def generate_ir_comment(IRBuilder, text):
    # IRBuilder.comment cannot have new lines
    for t in text.splitlines():
        if t.strip() != "":
            IRBuilder.comment(t)


class UnsupportedOperatorException(Exception):
    pass

class InvalidTypeException(Exception):
    pass

class InvalidSyntaxException(Exception):
    pass
