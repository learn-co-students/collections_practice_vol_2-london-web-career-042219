require 'pry'

def begins_with_r(array)
  array.all? {|x| x.start_with?('r')}
end

def contain_a(array)
  answer_array = []
  array.each do |x|
    if x.include?('a')
      answer_array << x
    end
  end
  answer_array
end

def first_wa(array)
  answer_array = []
  array.each do |x|
    if x.class == String && x.start_with?('wa')
      answer_array << x
      return answer_array.join
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array)
  new_array = []
  array.group_by{|x|x}.collect do |k,v|
    k[:count]=v.count
    new_array << k
  end
  new_array
end

def merge_data(keys, data)
  blake_first = keys[0]
  blake_second = data[0]["blake"]
  girl_first = keys[1]
  girl_second = data[0]["ashley"]
  blake_hash = blake_first.merge(blake_second)
  girl_hash = girl_first.merge(girl_second)
  return blake_hash, girl_hash
end

def find_cool(array)
  answer_array = []
  array.each do |key, value|
    key.each do |k,v|
      if k == :temperature && v == "cool"
        answer_array << key
      end
    end
  end
  answer_array
end

def organize_schools(schools)
  nyc_array = []
  chicago_array = []
  sf_array = []
  new_hash = {}
  schools.each do |key, value|
    value.each do |k, v|
      if v == "NYC"
        nyc_array << key
        new_hash[v]=nyc_array
      elsif v == "SF"
        sf_array << key
        new_hash[v]=sf_array
      elsif v == "Chicago"
        chicago_array << key
        new_hash[v]=chicago_array
      end
    end
  end
  new_hash
end
