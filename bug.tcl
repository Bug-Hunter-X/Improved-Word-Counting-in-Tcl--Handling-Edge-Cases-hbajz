proc count_words {text} {
  set word_count 0
  foreach word [split $text] {
    if {[string length $word] > 0} {
      incr word_count
    }
  }
  return $word_count
}

#Example Usage
puts [count_words "This is a sample sentence"]  ;#Output: 5
puts [count_words {This is another example with multiple spaces   }] ;#Output 6
puts [count_words {}] ;#Output 0
puts [count_words "" ] ;#Output 0

proc count_words_v2 {text} {
  set words [split $text];
  return [llength [filter $words {string length [string trim $it] > 0}]];
}

puts [count_words_v2 "This is a sample sentence"]
puts [count_words_v2 {This is another example with multiple spaces   }]
puts [count_words_v2 {}]
puts [count_words_v2 "" ]