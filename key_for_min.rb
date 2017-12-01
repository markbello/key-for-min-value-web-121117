# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  #push all the values into an array

  values = name_hash.collect do |key, value|
    value
  end

  #iterate through the array to set the lowest value
  min_value = values[0]
  values.each do |value|
    if value <= min_value
      value = min_value
    end
  end

  #return the matching key
  name_hash.each do |key, value|
    if value = min_value
      return key
    end
  end
end
