# your code goes here
def begins_with_r( array )
  return_v=true
  array.each do | v |
    if v[0]!='r'
      return_v=false
    end
  end
  return_v
end

def contain_a( array )
  return_a=[]
  this_word=false

  array.each do | v |
    if v.include?("a")
      return_a << v
    end
  end
  return_a
end

def first_wa( array )
return_word=""
  array.each do | v |
    if v[0]=="w" && v[1]=="a" && return_word==""
      return_word=v
    end
  end
return_word
end

def remove_non_strings( array )
  return_a=[]
  array.each do | v |
    if v.class==String
      return_a << v
    end
  end
  return_a
end

def count_elements( array_of_h )
  working_h = {}
  return_h = []
  counter=0

  array_of_h.each do |hash_v|
    hash_v.each do | k, v |
      if working_h[v]
        working_h[v]+=1
      else
        working_h[v]=1
      end
    end
  end

  working_h.each do | k, v |
    return_h[counter]={}
    return_h[counter][:name]=k
    return_h[counter][:count]=v
    counter+=1
  end
  
  return_h

end

def merge_data(keys, data)

  merged_d=[]
  current_name=""

  counter=0
  keys.each do |k, v|
    merged_d[counter]={}
    current_name=keys[counter][:first_name]
    merged_d[counter][:first_name]=current_name
    merged_d[counter][:motto]=keys[counter][:motto]
    merged_d[counter][:awesomeness]=data[0][current_name][:awesomeness]
    merged_d[counter][:height]=data[0][current_name][:height]
    merged_d[counter][:last_name]=data[0][current_name][:last_name]
    counter+=1

  end

  
  merged_d

end

def find_cool( cool )
  counter=0
  return_a=[]
  cool.each do
    if cool[counter][:temperature]=='cool'
      return_a << cool[counter]
    end
    counter+=1
  end
  
  
def organize_schools(schools)
  
  return_schools={}
  schools.each do |school, school_data |
    school_location=schools[school][:location]
    if !return_schools[school_location]
      return_schools[school_location]=[]
    end
    return_schools[school_location] << school
  end
  return_schools

end