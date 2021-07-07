require 'pry'

def begins_with_r(words)
  words.map! { |word| word.to_s.downcase.start_with?("r") }
  return words.all?
end

def contain_a(words)
  words.select! { |word| word.to_s.downcase.include?("a") }
  return words
end

def first_wa(words)
  words.each do |word|
    if word.to_s.downcase.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  array.select! { |element| element == element.to_s }
  return array
end

def count_elements(array)
  array.group_by(&:itself)
    .map { |key, entries| key.merge(count: entries.length)  }
end

def merge_data(data1,data2)
  i = 0
  while i < data1.length do
    data2.each do |person|
      person.each do |name, details|
        if name == data1[i][:first_name]
          data1[i].update(details)
        end
      end
    end
    i += 1
  end
  data1
end

def find_cool(input)
  cool = []
  input.each do |item|
    item.each do |key, val|
      if key == :temperature && val == "cool"
        cool << item
      end
    end
  end
  return cool
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, data|
    if organized.has_key?(data.values.join)
      organized["#{data.values.join}"] << school
    else
      organized["#{data.values.join}"] = []
      organized["#{data.values.join}"] << school
    end
  end
  organized
end
