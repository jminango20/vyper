# pragma version 0.4.0
# @license MIT

 # favorite thing list:
 # favorite numbers
#  favorite people with their favorite numbers

struct Person:
    favorite_number: uint256
    name: String[100]

my_favorite_number: public(uint256) #7

list_of_numbers: public(uint256[5]) #[0,0,0,0,0]
index: public(uint256)

list_of_people: public(Person[3]) # (7, Juan), (2, Pedro), (10, Luis)

name_of_favorite_number: public(HashMap[String[100], uint256])

# Constructor
@deploy
def __init__():
    self.my_favorite_number = 7
    self.index = 0


@external
def store(new_number: uint256):
    self.my_favorite_number = new_number

@external 
@view
def retrieve() -> uint256:
    return self.my_favorite_number


@external
def add_number(my_favorite_number: uint256):
    self.list_of_numbers[self.index] = my_favorite_number
    self.index += 1

@external
def add_people(favorite_number: uint256, name: String[100]):
    new_person: Person = Person(favorite_number = favorite_number, name = name)
    self.list_of_people[self.index] = new_person
    self.index += 1

@external
def hashmap_people(favorite_number: uint256, name: String[100]):
    self.name_of_favorite_number[name] = favorite_number
