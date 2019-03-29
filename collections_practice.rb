# your code goes here


def begins_with_r(input)

  input.each do |member|
    return false if member[0].downcase != "r"
  end

  return true

end


def contain_a(input)
  input.select { |member| member.include?("a") }
end


def first_wa(input)
  input.find { |member| member.to_s.start_with?("wa") }
end


def remove_non_strings(input)
  input.select { |member| member.class == String }
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

#require 'pry'

def merge_data(keys, data)
  keys.collect do |key|
    #binding.pry
    key.merge(data[0][key[:first_name]])
  end
end


def find_cool(input)
  input.select { |member| member[:temperature] == "cool" }
end


#require 'pry'

def organize_schools(input)

  result = {}

  input.each do | key, val |
    result[val[:location]] = [] if result[val[:location]] == nil
    result[val[:location]] << key
  end

  result
end
