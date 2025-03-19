class Calculator
  def add(str)
    sum = 0
    delimiter = '[\n,]'
    negative_nums = []

    if str.start_with?("//")
      delimiter, int_arr = str.split("\n", 2)
      delimiter = delimiter.chars[2]
    end

    int_arr = str.split(/#{delimiter}/)
    int_arr.each do |ele|
      ele = ele.to_i
      if ele < 0
        negative_nums.push(ele)
        next
      end
      sum += ele
    end

    raise "negative numbers not allowed: #{negative_nums.join(',')}" unless negative_nums.empty?
    sum
  end
end
