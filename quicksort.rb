def quicksort(array)
  return array if array.length <= 1

  pivot_index = array.length / 2
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

  lesser = []
  greater = []

  array.each do |x|
    if x <= pivot_value
      lesser << x
    else
      greater << x
    end
  end

  return quicksort(lesser) + [pivot_value] + quicksort(greater)
end