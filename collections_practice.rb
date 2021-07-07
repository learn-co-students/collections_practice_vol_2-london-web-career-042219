require 'pry'

def begins_with_r(array)
  bool = true
  array.each {|word|
    if word.split('').first == "r".downcase
      bool = true
    else
      bool = false
      break
    end
  }
  bool
end

def contain_a(array)
  yes = []
  array.each {|elem|
    if elem.include?('a')
      yes << elem
    end
  }
  yes
end

def first_wa(array)
  str = ''
  array.each {|elem|
    if elem.match(/\Aw{1}a{1}/)
      str = elem
      break
    end
  }
  str
end

def remove_non_strings(array)
  array.select{|elem|
   elem.class == String
  }
end

def count_elements(array)
  strings = []
     array.each {|kv|
       strings << kv.values
     }
  strings = strings.flatten
  new_hash = {}
  arr = []
  strings.each {|name|
   new_hash[:name] = name
   new_hash[:count] = strings.count(name)
   arr << new_hash.clone
   arr = arr.uniq
  }
arr
end

def merge_data(keys, data)
  hashA = {}
  hashB = {}
  people = []

  data.each {|hash|
    hash.each {|name,data|
      people << name
    }
  }

  data.each {|hash|
    hash.each_with_index {|(name,data),i|
      data.each {|att,value|
        if name == people[0]   # I can't figure out how to iteratively declare hashes
          hashA[att] = value
        else
          hashB[att] = value
        end
      }
    }
  }

  keys.each {|hash|
    hash.each {|attribute,value|
      if hash[:first_name] == people[0]
        hashA[attribute] = value
      else
        hashB[attribute] = value
      end
    }
  }

  [hashA,hashB]
end

def find_cool(array)
  ice = {}
  array.each do |hash|
  if hash[:temperature] == "cool"
    ice = hash
  else
    next
  end
end
  [ice]
  #binding.pry
end

def organize_schools(array)
  #schools are in a hash with key/value pairs:
  # "School_name" => {:location => "Chicago"},
  # Wants {"NYC" => ["school1","school2"], "SF" => etc}
  sorted = {}
  array.each {|school,hash|
    hash.each {|symbol,location|
      if sorted.key?(location)  #boolean check if key exists
        sorted[location] << school
      else
        sorted[location] = [] << school
      end

    }
  }
  sorted
  #binding.pry
end
