# frozen_string_literal: true

require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end
