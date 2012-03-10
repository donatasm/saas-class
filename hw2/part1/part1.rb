
## Part A
#--------------------------------------
class Numeric

  @@currencies = {'dollar' => 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}

  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    end
  end

end


## Part B
#--------------------------------------
def xpalindrome?(string)
  if string
    downcaseWord = string.gsub(/\W/, "").downcase
    if downcaseWord.length > 0
      return downcaseWord.eql? downcaseWord.reverse
    end
    return false
  end
end

class String
  def palindrome?
    xpalindrome?(self)
  end
end


## Part C
#--------------------------------------
module Enumerable
  def palindrome?
    (self.is_a? Array) ? self.reverse == self : self.to_a.palindrome?
  end
end