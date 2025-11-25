def add(a, b):
    """Simple addition function"""
    return a + b

def subtract(a, b):
    """Simple subtraction function"""
    return a - b

if __name__ == "__main__":
    print("Calculator module loaded")
    print(f"5 + 3 = {add(5, 3)}")
    print(f"10 - 4 = {subtract(10, 4)}")