def bubble_sort(array)
  x = 0
  while x < (array.length - 1) do
  # compare each element to one on the right
  array.map do |element|
    break if element == array[-1]
    if element >= array[array.index(element) + 1]
      # this below currently deletes duplicates
      # is there another way we can tell computer to swap?
      array.insert((array.index(element) + 1), array.delete(element))
    end
  end
  p array
  x += 1
  end
  array
end
