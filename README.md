Chillow
A backend Willow clone I built in Ruby to reinforce understanding of object oriented composition.

This project was built using TDD, which helped in understanding requirements of the objects and their methods.

Provided models and their instance methods go as follows:

#Occupant
Initializes with:
      first_name
      last_name
#Dwelling
Initializes with:
      address
      city
      state
      zip
#Apartment
      rent_per_month
      lease_start_date
      lease_end_date
      add_roommate
      remove_roomate
      full?
#House
      asking_price
#Truck
      max_boxes
      boxes (array)
#Box
      owner
