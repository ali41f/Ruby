class Array

  def square
    self.map { |i| i * i }
  end

  def cube
    self.map { |i| i * i * i }
  end

  def average
    if self.empty?
      return 'NaN'
    end
    sum = self.inject { |a, b| a + b }
    sum / self.count
  end

  def sum
    self.inject { |a, b| a + b }
  end

  def even
    self.select { |i| i.even? }
  end

  def odd
    self.select { |i| i.odd? }
  end

end



class Array1
  def square
    map {|x| x*x}
  end

  def cube
    map {|x| x**3}
  end

  def average
    sum / size
  end

  def sum
    reduce(:+)
  end

  def even
    select(&:even?)
  end

  def odd
    select(&:odd?)
  end
end