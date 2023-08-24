module MyEnumerable
  def all?
    each do |e|
      return puts false unless yield e
    end
    puts true
  end

  def any?
    each do |e|
      return puts true if yield e
    end
    puts false
  end

  def filter
    new_list = []

    each do |e|
      new_list.push(e) if yield e
    end
    print new_list
  end
end
