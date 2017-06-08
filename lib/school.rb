# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.fetch(grade, false)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_with_object({}) do |data_pair, sorted_hash|
      sorted_hash[data_pair[0]] = data_pair[1].sort
    end
  end

end
