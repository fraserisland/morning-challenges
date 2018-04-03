# Unique
#
# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.
#
# Difficulty:
# 5/10
#
# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]
#
# Hints:
# A hash could be helpful in your solution.
#
# Check your solution by running the tests:
# ruby tests/09_unique_test.rb
#


#-push each element into a hash -
#push values into hash with value -
#if value is  > 1 dont put anything

def unique (mylist)
  hash={}
  uni=[]
  mylist.each{|y| hash[y]= y+1}
  hash.map{|x,y| uni.push(x)}
  return uni
end
