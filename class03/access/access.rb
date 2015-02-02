users = {
      "Peter" => {
        :github => "peterylai",
        :favorite_numbers => [12, 42, 75]
      },
      "Greg" => {
        :github => "gmac",
        :favorite_numbers => [11, 99, 24]
      },
      "Martin" => {
        :github => "mobjohnson",
        :favorite_numbers => [17, 13, 21]
      }
    }

# small = users['Martin'][:favorite_numbers][0]
# users['Martin'][:favorite_numbers].each do |el|
#   puts el
#   small = el unless el > small
# end
# small

even = []
users['Greg'][:favorite_numbers].each do |num|
  even << num if num % 2 == 0
end
even