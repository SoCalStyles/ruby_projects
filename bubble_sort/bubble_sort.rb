def bubble_sort(array)
  x = 0
  while x < (array.length - 1) do
    swaps = 0
    array.each_with_index do |element, index| # compare each element to one on right
      break if index == (array.length - 1)
      if element > array[index + 1] # if larger than element on right, swap
        array.insert((index + 1), array.delete_at(index))
        swaps += 1
      end
    end
  p array
  x += 1
  break if swaps == 0
  end
  array
end

# find out how to break if already sorted
