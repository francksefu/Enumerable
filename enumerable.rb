# The MyEnumerable module provides the #all?, #any?, and #filter methods.
# It requires the #each method to be defined.
module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter
    result = []
    each { |item| result << item if yield(item) }
    result
  end
end
