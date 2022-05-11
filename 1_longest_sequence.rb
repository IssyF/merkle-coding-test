def longest_sequence(sequence)
  index = 0
  longest_count = { sequence[index] => 1}
  letter_count = 1
  while index < sequence.length - 1
    index += 1
    # If the letter is the same as the one before, increment the letter count
    if sequence[index].downcase == sequence[index - 1].downcase
      letter_count += 1
    else
    # Else, reset the letter count back to 1
      letter_count = 1
    end
    # If the letter count is greater than the longest letter count so far, or if it's the same but earlier in the alphabet, replace it
    if (letter_count > longest_count.values[0]) || ((letter_count == longest_count.values[0]) && (sequence[index] < longest_count.keys[0]))
      longest_count = { sequence[index].downcase => letter_count}
    end
  end
  return longest_count
end
