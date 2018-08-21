require 'pry'
class Deck
  attr_reader :cards,
              :count,
              :sort,
              :merge_sort,
              :bubble_sort

  def initialize (cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def bubble_sort(array)
    return array if array.size <= 1
    swap = true
      while swap
        swap = false
        (array.size - 1).times do |i|
          if array[i].numeric_value == array[i + 1].numeric_value && array[i].numeric_suit > array[i+1].numeric_suit
            array[i],array[i+1] = array[i+1], array[i]
          elsif array[i].numeric_value > array[i + 1].numeric_value
            array[i],array[i+1] = array[i+1], array[i]
            swap = true
          end
        end
      end
      array
  end

  def merge(left_array,right_array)

    if right_array.empty?
      return left_array
    end

    if left_array.empty?
      return right_array
    end
    sorted = []
    until left_array.empty? || right_array.empty?
      if left_array.first.numeric_value <= right_array.first.numeric_value
        sorted << left_array.shift
      else
        sorted << right_array.shift
      end
    end
    bubble_sort(sorted.concat(left_array).concat(right_array))
  end

  def merge_sort
    return @cards if count <= 1
    half_count = (count/2).round

    left_array = @cards.take(half_count)
    right_array = @cards.drop(half_count)

    sorted_left_array = bubble_sort(left_array)
    sorted_right_array = bubble_sort(right_array)
    merge(sorted_left_array,sorted_right_array)

  end
end
