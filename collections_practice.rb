def begins_with_r(x)
  x.each do |array|
    return false if array[0].downcase != "r"
  end
  return true
end

def contain_a(x)
  x.select { |array| array.include?("a") }
end

def first_wa(x)
  x.find { |array| array.to_s.start_with?("wa") }
end

def remove_non_strings(x)
  x.select { |array| array.class == String }
end

def count_elements(input)

   result = []

   input.each do |member|
    found = false
    result.each do |list_item|
      if list_item[0] == member
        list_item[1] += 1
        found = true
        break
      end
    end
    if not found
      result << [ member, 1 ]
    end
  end

  result.collect do |list_item|
    list_item[0].merge({count: list_item[1]})
  end
end

def merge_data(keys, data)
  keys.collect do |key|
    key.merge(data[0][key[:first_name]])
  end
end

def find_cool(x)
  x.select { |hash| hash[:temperature] == "cool" }
end

def organize_schools(input)

   result = {}

   input.each do | key, val |
    result[val[:location]] = [] if result[val[:location]] == nil
    result[val[:location]] << key
  end

   result
end
