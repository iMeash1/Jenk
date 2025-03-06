def check_even_odd(number):
    if number % 2 == 0:
        return f"{number} is even"
    else:
        return f"{number} is odd"

if __name__ == "__main__":
    import sys
    if len(sys.argv) > 1:
        try:
            num = int(sys.argv[1])
            print(check_even_odd(num))
        except ValueError:
            print("Please provide a valid number")
    else:
        print("Please provide a number as an argument")
