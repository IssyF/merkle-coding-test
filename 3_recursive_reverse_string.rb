def reverse_string(string)
  # If the string is empty, its reverse is the empty string
  if string == ""
    reverse = ""
  # If the string has one character, return it
  elsif string.length == 1
    reverse = string
  # Otherwise, the result is a concatenation of the string parameter without the first letter, in reverse, and the first letter at the end
  # i.e. call the method inside the method
  else
    reverse = string[-1] + reverse_string(string[1..-2]) + string[0]
  end
  return reverse
end
