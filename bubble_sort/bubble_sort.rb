def bubble_sort(array)

  # compare each element to one on the right
  array.map do |element|
    next if element == array[-1]
    if element > array[array.index(element) + 1]
      array.insert((array.index(element) + 1), array.delete(element))
    end
    array
  end
  array
end
