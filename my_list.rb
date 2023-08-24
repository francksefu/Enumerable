require_relative 'enumerable'

# The MyList class is a simple wrapper around an array.
# It includes the MyEnumerable module, which provides the #all?, #any?, and #filter methods.
# The #each method is also defined, which is required by the MyEnumerable module.
class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end
