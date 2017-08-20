Test_Arr = [['abcdeb', 'b'], ['abcdeb', 'b'], ['abbc', 'bb']]


def solution(full_text, search_text)
  full_text.scan(search_text).count
end

Test_Arr.each { |x,y| print solution(x, y), "\n" }



def solution1(full_text, search_text)
  (full_text.count(search_text))/(search_text.length)
end

Test_Arr.each { |x,y| print solution1(x, y), "\n" }




def solution2(full_text, search_text)
  full_text.gsub(/#{search_text}/).count rescue 0
end

Test_Arr.each { |x,y| print solution2(x, y), "\n" }