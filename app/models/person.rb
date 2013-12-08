class Person
  attr_accessor :name, :library_membership_number

  def initialize(person)
    @name = person
    @library_membership_number = []
  end
end
