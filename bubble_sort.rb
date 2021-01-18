def bubble_sort(array)
  n = array.length

  loop do
    swap = false

    (n - 1).times do |i|
      if array[i] > array [i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end

    break unless swap
  end
  array
end

p bubble_sort([3, 4, 5, 2, 1])

def bubble_sort_by(array)
  n = array.length

  loop do
    swap = false

    (n - 1).times do |i|
      comparation = yield array[i], array[i + 1]

      if comparation.positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end

    break unless swap
  end
  p array
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
