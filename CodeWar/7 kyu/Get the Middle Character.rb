Test_Arr = ["test", "testing", "middle", "A", "of"]


def get_middle(s)
  if s.length.even?
    return s[s.length/2-1] + s[s.length/2]
  else
    return s[s.length/2]
  end
end

Test_Arr.each { |x| puts get_middle(x) }




def get_middle1(s)
  s[(s.size-1)/2..s.size/2]
end

Test_Arr.each { |x| puts get_middle1(x) }




def get_middle2(s)
  mid = (s.length - 1) / 2
  s.length.odd? ? s[mid] : s[mid..mid+1] # if s.length is odd, print
end

Test_Arr.each { |x| puts get_middle2(x) }

