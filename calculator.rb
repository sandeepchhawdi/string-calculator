class Calculator
  def add(str)
    sum = 0
    delimiter = '[\n,]'

    if str.start_with?("//")
      delimiter, int_arr = str.split("\n", 2)
      delimiter = delimiter.chars[2]
    end

    int_arr = str.split(/#{delimiter}/)
    int_arr.each do |ele|
      sum += ele.to_i
    end
    sum
  end
end
