class MergeSort
  class << self
    def sort(array = [], first = nil, last = nil)
      first ||= 0
      last ||= array.size
      middle = ((first + last) / 2).floor # Divide
      if first < last
        sort(array, first, middle) # Conquer (recurse and split into n arrays of size 1)
        sort(array, middle + 1, last) # "
        merge(array, first, middle, last) # Combine sorted arrays, starting at 2 size 1 arrays, then 2 size 2, 2 size 4, etc.
      end
      array[first..last - 1] # Returns the array
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