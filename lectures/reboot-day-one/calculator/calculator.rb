def add(one, two)
  result = one + two
end

def calculator(number_one, number_two, math_sign)
  if math_sign == "+"
    # 7.2 do the right math
    add(number_one, number_two)
  elsif math_sign == '-'
    # 7.2 do the right math
    result = number_one - number_two
  elsif math_sign == '*'
    # 7.2 do the right math
    result = number_one * number_two
  elsif math_sign == '/'
    # 7.2 do the right math
    result = number_one / number_two
  else
    result = 'Invalid operator. Try [+, -, *, /]'
  end

  return result
end
