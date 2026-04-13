# Python - Abstract Base Classes (ABC)

This module contains advanced Python OOP concepts including Abstract Base Classes, duck typing, inheritance, and mixins.

## Tasks Overview

### Task 0: Abstract Animal Class (`task_00_abc.py`)
Demonstrates abstract base classes with an `Animal` abstract class and its concrete implementations `Dog` and `Cat`.

**Concepts**: ABC, @abstractmethod, Inheritance

```python
from task_00_abc import Animal, Dog, Cat

dog = Dog()
print(dog.sound())  # Output: Bark

cat = Cat()
print(cat.sound())  # Output: Meow
```

### Task 1: Shapes with Duck Typing (`task_01_duck_typing.py`)
Implements abstract `Shape` class with `Circle` and `Rectangle` subclasses, and uses duck typing for polymorphism.

**Concepts**: ABC, Duck Typing, Polymorphism

```python
from task_01_duck_typing import Circle, Rectangle, shape_info

circle = Circle(radius=5)
rectangle = Rectangle(width=4, height=7)

shape_info(circle)
shape_info(rectangle)
```

### Task 2: VerboseList (`task_02_verboselist.py`)
Extends the built-in `list` class to add notifications when items are added or removed.

**Concepts**: Class Extension, Method Overriding, super()

```python
from task_02_verboselist import VerboseList

vl = VerboseList([1, 2, 3])
vl.append(4)        # Output: Added [4] to the list.
vl.extend([5, 6])   # Output: Extended the list with [2] items.
vl.remove(2)        # Output: Removed [2] from the list.
vl.pop()            # Output: Popped [6] from the list.
```

### Task 3: CountedIterator (`task_03_countediterator.py`)
A wrapper around iterators that counts how many items have been iterated over.

**Concepts**: Iterator Protocol, __next__, StopIteration

```python
from task_03_countediterator import CountedIterator

data = [1, 2, 3, 4]
counted_iter = CountedIterator(data)

for item in counted_iter:
    print(f"Got {item}, total {counted_iter.get_count()} items iterated.")
```

### Task 4: FlyingFish - Multiple Inheritance (`task_04_flyingfish.py`)
Demonstrates multiple inheritance with `Fish`, `Bird`, and `FlyingFish` classes, showing method resolution order (MRO).

**Concepts**: Multiple Inheritance, MRO, Method Overriding

```python
from task_04_flyingfish import FlyingFish

flying_fish = FlyingFish()
flying_fish.swim()      # Output: The flying fish is swimming!
flying_fish.fly()       # Output: The flying fish is soaring!
flying_fish.habitat()   # Output: The flying fish lives both in water and the sky!
```

### Task 5: Dragon - Mixins (`task_05_dragon.py`)
Uses mixin classes `SwimMixin` and `FlyMixin` to add behaviors to the `Dragon` class.

**Concepts**: Mixins, Composition, Flexible Inheritance

```python
from task_05_dragon import Dragon

dragon = Dragon()
dragon.swim()   # Output: The creature swims!
dragon.fly()    # Output: The creature flies!
dragon.roar()   # Output: The dragon roars!
```

## Key Concepts

- **Abstract Base Classes (ABC)**: Blueprint for derived classes with abstract methods
- **Duck Typing**: If it looks like a duck and quacks like a duck, it's a duck
- **Multiple Inheritance**: A class inheriting from multiple parent classes
- **Mixins**: Reusable classes that provide specific functionality
- **Method Resolution Order (MRO)**: Order in which Python looks for methods in a hierarchy
- **Method Overriding**: Subclass providing its own implementation of a method
- **Iterator Protocol**: __iter__ and __next__ methods for iteration

## Testing

All tasks are self-contained and can be tested independently. Each task includes:
- Proper documentation
- PEP8 compliant code
- Concrete implementations of abstract concepts
