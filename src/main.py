#!/usr/bin/env python3

import sys

class Adder():
    def __init__(self, val1, val2):
        self.val1 = val1
        self.val2 = val2

        # comment above getSum
    def getSum(self):
        return self.val1 + self.val2


    # comment above main
if __name__ == "__main__":
    print("Starting program")

    adder = Adder(10, 20)
    print(adder.getSum())

    print("Done with program")
