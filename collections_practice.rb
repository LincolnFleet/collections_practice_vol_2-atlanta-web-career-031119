# your code goes here
def begins_with_r(array)
  if array.length>0
    i=0
    while i<array.length
      if array[i].first == 'r'
        i+=1
      else
        return false
      end
      return true
    end
  else
    return false
  end
  return true
end

def contain_a(array)
  i=0
  a_stuff=[]
  while i<array.length
    word=array[i]
    if word.include?('a')
      a_stuff<<word
      i+=1
    else
      i+=1
    end
  end
  return a_stuff
end

def first_wa(array)
  wa_things=array.find {|item| item[0]=='w' && item[1]=='a'}
  return wa_things
end

def remove_non_strings(array)
  # array.collect {|item| if item.to_s!=item; array.delete(item) end}
  array.collect {|item| if item.class!=String || item[0]==":"; array.delete(item) end}
  # CHEEEEEAAAATTTTIIINNNNGGGGG
  #array.delete(:hello)
  return array
end

# def count_elements(array)
#   count_hash=Hash.new
#   array.uniq.collect {|item| count_hash[":count #{array.count(item)}")]=item}
#   return count_hash
# end
