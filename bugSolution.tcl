proc count_words_improved {text} {
  # Remove leading/trailing whitespace
  set text [string trim $text]

  # Handle empty strings
  if {[string length $text] == 0} {
    return 0
  }

  # Split the string into words
  set words [split $text]

  # Count non-empty words
  set count 0
  foreach word $words {
    if {[string length $word] > 0} {
      incr count
    }
  }
  return $count
}

# Example usage
puts [count_words_improved "This is a sample sentence"]  ;#Output: 5
puts [count_words_improved {This is another example with multiple spaces   }] ;#Output: 6
puts [count_words_improved {}] ;#Output: 0
puts [count_words_improved "" ] ;#Output: 0