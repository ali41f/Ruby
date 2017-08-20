Test_Arr = [[1,2,'a','b'], [1,'a','b',0,15], [1,2,'aasf','1','123',123]]


def filter_list(l)
  l.reject! { |i| i.is_a? String }
end

Test_Arr.each { |l| print filter_list(l), "\n"}



def filter_list1(l)
  l.grep(Numeric)
end

Test_Arr.each { |l| print filter_list1(l), "\n"}



def filter_list2(l)
  l.delete_if { |x| x.class == String }
end

Test_Arr.each { |l| print filter_list2(l), "\n"}



def filter_list3(l)
  l.select {|x| x * 0 == 0}
end

Test_Arr.each { |l| print filter_list3(l), "\n"}
