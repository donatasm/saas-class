
def combine_anagrams(words)
  if words
    if words == []
      return []
    end
    anagram_groups = {}
    words.each do |w|
      key = ""
      w.downcase.chars.sort.each do |c|
        key = key << c  
      end
      if !anagram_groups[key]
        anagram_groups[key] = []
      end
      anagram_groups[key] << w
    end
    return anagram_groups.values
  end
end
