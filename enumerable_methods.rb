#!/~/the_odin_project/ruby_practice

class Array
  def my_each
    for index in (0...self.length)
        yield(self[index])
    end
  end

  def my_each_with_index
    for index in (0...self.length)
        yield(self[index], index)
    end
  end

  def my_select
    new_array = []
    for index in (0...self.length)
        if (yield(self[index]))
          new_array.push(self[index])
        end
    end
    new_array
  end

  def my_all?
    for index in (0...self.length)
        return false if (!yield(self[index]))
    end
    return true
  end

  def my_any?
    for index in (0...self.length)
        return true if (yield(self[index]))
    end
    return false
  end

  def my_none?
    for index in (0...self.length)
        return false if (yield(self[index]))
    end
    return true
  end

  def my_count
    count = 0
    for index in (0...self.length)
        count += 1 if (yield(self[index]))
    end
    count
  end

  def my_map &block
    new_array = []
    for index in (0...self.length)
        new_array.push(block.call(self[index]))
    end
    new_array
  end

  def my_inject total
    for index in (0...self.length)
        total = yield(total, self[index])
    end
    total
  end
end
