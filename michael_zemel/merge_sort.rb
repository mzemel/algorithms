class MergeSort
  class << self
    def sort(array = [], first = nil, last = nil)
      first ||= 0
      last ||= array.size
      middle = ((first + last) / 2).floor # Divide
      if first < last
        sort(array, first, middle) # Conquer
        sort(array, middle + 1, last) # Conquer
        merge(array, first, middle, last) # Combine
      end
      array[first..last - 1]
    end

    # Given a first and last index, and an array
    # splits the array into two pieces and merges the two
    #   NOTE: Each sub-section should be sorted at this point
    def merge(array, first, middle, last)
      left = array[first..middle]
      right = array[(middle + 1)..last]
      left << 999_999 # Sentinel element
      right << 999_999 # Sentinel element
      i = j = 0
      (first..last).each do |n|
        if left[i] <= right[j]
          array[n] = left[i]
          i += 1
        else
          array[n] = right[j]
          j += 1
        end
      end
      array[first..last]
    end
  end
end