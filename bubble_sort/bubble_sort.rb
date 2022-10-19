def bubble_sort(array)
  x = 0
  while x < (array.length - 1) do
    array.each_with_index do |element, index|
      break if index == (array.length - 1)
      if element > array[index + 1]
        array.insert((index + 1), array.delete_at(index))
      end
    end
  p array
  x += 1
  end
  array
end
