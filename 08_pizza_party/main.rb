# def main
#   people = number_of_people()
#   pizzas = number_of_pizzas
#   main_programme(people, pizzas)
# end
#
# def main_programme(people, pizzas)
#   if are_valid?(people, pizzas) == false
#     puts "The number of people or pizzas you entered was incorrect. Please enter them again, ensuring they are whole numbers"
#     return
#   end
#   converted_people = convert_to_number(people)
#   converted_pizzas = convert_to_number(pizzas)
#
#   confirms_people_and_pizzas(converted_people, converted_pizzas)
#
#   slice_per_person = calculates_number_of_pizza_slices_per_person(converted_people, converted_pizzas)
#   left_over_slices = calculates_number_of_left_over_slices(converted_people, converted_pizzas)
#
#   displays_number_of_slices_per_person(slice_per_person)
#   displays_number_of_left_over_slices(left_over_slices)
# end
