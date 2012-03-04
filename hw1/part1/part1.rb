
def palindrome?(string)
  if string
    downcaseWord = string.gsub(/\W/, "").downcase
    if downcaseWord.length > 0
      return downcaseWord.eql? downcaseWord.reverse
    end
    return false
  end
end


def count_words(string)
  count = {}
  if string
    words = string.downcase.split(/\b/)
    words.each do |w|
      if /\w/ =~ w
        if count[w]
          count[w] = count[w] + 1
        else
          count[w] = 1
        end
      end
    end
  end
  return count
end
