class Calculator
  def add(str)
    sum = 0
    int_arr = str.split(/[\n,]/)
    int_arr.each do |ele|
      sum += ele.to_i
    end
    sum
  end
end
