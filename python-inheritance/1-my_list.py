#!/usr/bin/python3
"""Module that contains the MyList class"""


class MyList(list):
    """A class that inherits from list"""

    def print_sorted(self):
        """Prints the list, but sorted (ascending sort)"""
        print(sorted(self))

    def __str__(self):
        """Returns the string representation of the sorted list"""
        return str(sorted(self))
