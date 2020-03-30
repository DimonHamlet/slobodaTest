# frozen_string_literal: true

# Recursive function for traversal over the matrix
def graph_traversal(checked_friends, person, matrix)
  for i in 0...matrix.size
    # Cheking if friend and adding to checked list to prevent looping
    if matrix[person][i] == 1 && checked_friends[i] != true
      # Incrementing friends
      $friends += 1
      # Add person to checked list
      checked_friends[i] = true
      # Recursive call
      graph_traversal(checked_friends, i, matrix)
    end
  end
end

def calculate_friends(_people_number, position, matrix)
  # Array for checked people
  checked_friends = []
  # Adding person himself to checked list
  checked_friends[position - 1] = true
  # Bad global variable :(
  $friends = 0
  graph_traversal(checked_friends, position - 1, matrix)
  $friends
end

# Just function for printing 2-d arrays
def print_arr(array)
  for i in 0...array.size
    for j in 0...array[i].size
      print("#{array[i][j]} ")
    end
    puts()
  end
end

# Test data

test_matrix1 = Array[[0, 1, 0], [1, 0, 1], [0, 1, 0]]
test_matrix2 = Array[
                      [0, 0, 0, 0, 0],
                      [0, 0, 1, 0, 0],
                      [0, 1, 0, 0, 1],
                      [0, 0, 0, 0, 1],
                      [0, 0, 1, 1, 0]
                    ]

test_result1 = calculate_friends(3, 1, test_matrix1)
test_result2 = calculate_friends(5, 2, test_matrix2)

print_arr(test_matrix1)
puts("Test data1, result = #{test_result1}")

print_arr(test_matrix2)
puts("Test data2, result = #{test_result2}")
