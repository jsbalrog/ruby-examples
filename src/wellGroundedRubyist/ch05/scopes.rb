
$a = 0 #top level, outer scope

def t
  puts "Top level method t"
end

class C
  @a = 1 # Class definition scope -- visible to class objects.
  @@a = 6 # Class scope--visible to a class and instances of the class.

  #C.new calls initialize. Every instance of C (created via "c.new" will have
  # an instance variable @a initialized to 8.
  def initialize
    @a = 8
    puts "C.new: $a = #{$a}"
    puts "C.new: @a = #{@a}"
    puts "C.new: @@a = #{@@a}"
    @@a = @@a + 1
  end

  def self.x
    puts "C.x: @a = #{@a}"
  end

  def m
    a = 3
    puts "C#m: @a = #{@a}"
    puts "C#m: a = #{a}"
  end

  def n
    a = 4
    puts "C#n: @a = #{@a}"
    puts "C#n: @@a = #{@@a}" # Should be 7, since we added one in initialize
  end
end

C.x
c = C.new
c.m
c.n
