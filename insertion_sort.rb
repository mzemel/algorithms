class InsertionSort
  def initialize(array)
    @array = array
  end

  def sort
    (1..array.size - 1).each do |j|
      key = array[j]
      # iterate through loop invariant
      i = j - 1
      while i > -1 && array[i] > key do
        array[i+1] = array[i]
        i -= 1
      end
      array[i+1] = key
    end
    array
  end

  private

  attr_reader :array
end

# [ 3, 4, 1, 6, 2, 5 ]
# [ 3, 1, 4, 6, 2, 5 ]
# [ 1, 3, 4, 6, 2, 5 ]