def bool_to_word bool
  if bool
    return 'Yes'
  else
    return 'No'
  end
end

print bool_to_word(true), "\n"
print bool_to_word(false), "\n"



def bool_to_word1 bool
  return 'Yes' if bool else 'No'
end

print bool_to_word1(true), "\n"
print bool_to_word1(false), "\n"



def bool_to_word2 bool
  bool ? 'Yes' : 'No'
end

print bool_to_word2(true), "\n"
print bool_to_word2(false), "\n"



def bool_to_word3 bool
  {true => 'Yes', false => 'No'}[bool]
end

print bool_to_word3(true), "\n"
print bool_to_word3(false), "\n"



def bool_to_word4 bool
  return 'Yes' || 'No'
end

print bool_to_word4(true), "\n"
print bool_to_word4(false), "\n"

