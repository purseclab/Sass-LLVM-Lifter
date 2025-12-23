from colorama import Fore, Back, Style, init

# Initialize colorama
init()

# =============================
# Basic Color Functions
# =============================
def black(text):
    print(Fore.BLACK + text + Style.RESET_ALL)

def red(text):
    print(Fore.RED + text + Style.RESET_ALL)

def green(text):
    print(Fore.GREEN + text + Style.RESET_ALL)

def yellow(text):
    print(Fore.YELLOW + text + Style.RESET_ALL)

def blue(text):
    print(Fore.BLUE + text + Style.RESET_ALL)

def magenta(text):
    print(Fore.MAGENTA + text + Style.RESET_ALL)

def cyan(text):
    print(Fore.CYAN + text + Style.RESET_ALL)

def white(text):
    print(Fore.WHITE + text + Style.RESET_ALL)

# =============================
# Background + Text Color
# =============================
def bg_yellow_black(text):
    print(Back.YELLOW + Fore.BLACK + text + Style.RESET_ALL)

# =============================
# Styled Messages
# =============================
def info(text):
    print(Fore.CYAN + "[INFO] " + text + Style.RESET_ALL)

def success(text):
    print(Fore.GREEN + "[SUCCESS] " + text + Style.RESET_ALL)

def warning(text):
    print(Fore.YELLOW + "[WARNING] " + text + Style.RESET_ALL)

def error(text):
    print(Fore.RED + "[ERROR] " + text + Style.RESET_ALL)

# =============================
# Demo Function
# =============================
def demo():
    print("=== Basic Colors ===")
    black("This is black text")
    red("This is red text")
    green("This is green text")
    yellow("This is yellow text")
    blue("This is blue text")
    magenta("This is magenta text")
    cyan("This is cyan text")
    white("This is white text")

    print("\n=== Styled Messages ===")
    info("System is running")
    success("Operation succeeded")
    warning("Low battery")
    error("File not found")

    print("\n=== Background + Foreground ===")
    bg_yellow_black(" Warning: System Overload ")

if __name__ == "__main__":
    demo()