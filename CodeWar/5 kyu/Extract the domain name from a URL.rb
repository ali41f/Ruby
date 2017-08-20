=begin

Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

=end

Test_Arr = ["http://github.com/carbonfive/raygun",
            "http://www.zombie-bites.com",
            "https://www.cnet.com"]

def domain_name(url)
  url.match(/(.*\.|.*\/\/)(.*)\..*/)[2]
end

Test_Arr.each { |url| print domain_name(url), "\n" }


def domain_name2(url)
  regex = /(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end

Test_Arr.each { |url| print domain_name2(url), "\n" }


def domain_name3(url)
  url.match(%r{//[^/]*?([^/.]+)\.[^/.]+(/|$)})[1]
end

Test_Arr.each { |url| print domain_name3(url), "\n" }