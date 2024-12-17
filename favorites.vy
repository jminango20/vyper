# pragma version 0.4.0
# @license MIT

 # favorite thing list:
 # favorite numbers
#  favorite people with their favorite numbers

my_favorite_number: public(uint256) #7

# Constructor
@deploy
def __init__():
    self.my_favorite_number = 7

@external
def store(new_number: uint256):
    self.my_favorite_number = new_number

@external 
@view
def retrieve() -> uint256:
    return self.my_favorite_number