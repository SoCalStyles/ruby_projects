def bubble_sort(array)

  # take array and sort via bubble sort method

  # compare each element to the one on the right
  # loop n - 1 times
  i = 0
  while i < (array.length - 1)
    array.each do |element|
      if element > array.at(array.index(element) + 1)
        # this is where the code goes to move element one spot to right
      end
    i += 1
    end
  end
  array
end
