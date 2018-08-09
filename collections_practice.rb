require "pry"

def begins_with_r (array)
  first_letters = []

  array.each do |element|
    if element[0] == "r"
      first_letters.push(element)
    end
  end

  if first_letters.length == array.length
    return true
  else
    return false
  end
end



def contain_a (array)
  a_array = []

  array.each do |element|
    element_array = element.split("")
    if element_array.include?("a")
      a_array.push(element)
    end
  end

  a_array
end



def first_wa (array)
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end
end


def remove_non_strings (array)
  array.delete_if do |element|
    element.is_a?(String) == false
  end
end


def count_elements (array)
  array.each do |hash1|
    hash1[:count] = 0
    person = hash1[:name]
    array.each do |hash2|
      if hash2[:name] == person
        hash1[:count] += 1
      end
    end
  end
  array.uniq
end




def merge_data (keys, values)
  newArray = []

  keys.each do |nameHash|
    person = nameHash[:first_name]
    values.each do |personHash|
      if personHash[person]
        newPersonHash = personHash[person]
        newPersonHash[:first_name] = person
        newArray << newPersonHash
      end
    end
  end
  newArray
end


def find_cool (array)
  cool = []

  array.each do |personHash|
    personHash.each do |key, value|
      if key == :temperature
        if value == "cool"
          cool << personHash
        end
      end
    end
  end
  cool
end


def organize_schools (array)
  newHash = {}

  array.each do |info, hash|
    hash.each do |location, cityName|
      city = cityName
      newHash[city] = []
    end
  end
  newHash

  array.each do |info, hash|
    hash.each do |location, cityName|
      newHash[cityName] << info
    end
  end
  newHash
end
