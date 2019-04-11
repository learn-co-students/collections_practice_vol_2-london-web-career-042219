# your code goes here

def begins_with_r(array)
  r = true 
  array.each do |string|
    r &= string.downcase[0] == 'r' 
  end
  r
end

def contain_a(array)
  array.collect do |string|
    next if(!string.include?('a'))
    string
  end.compact
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array)
  array.collect do |word|
    next if (!word.is_a?(String))
    word
  end.compact
end

def count_elements(hashes)
  new_hashes = []
  hashes.each do |hash|
    found = false
    new_hashes.each do |new_hash|
      if(new_hash[:name] == hash[:name])
        new_hash[:count] += 1
        found = true
      end
    end
    if(!found)
      new_hashes << {
        name: hash[:name],
        count: 1
      }
    end
  end
  new_hashes
end

def merge_data(hashes1, hashes2)
  hashes1.collect do |hash1|
    hash = {}
    hashes2.each do |hash2|
      if(hash2.key?(hash1[:first_name]))
        hash = hash2[hash1[:first_name]]
        hash[:first_name] = hash1[:first_name]
        hash[:motto] = hash1[:motto]
      end
    end
    hash
  end
end

def find_cool(hashes)
  array = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
       array << hash
    end
  end
  array
end

def organize_schools(schools)
  hash = {}
  schools.each do |school, data|
    if hash.key? data[:location]
      hash[data[:location]] << school
    else
      hash[data[:location]] = [school]
    end
  end
  hash
end 