class Garden
  DEFAULT_STUDENTS = [
    'alice', 'bob', 'charlie', 'david',
    'eve', 'fred', 'ginny', 'harriet',
    'ileana', 'joseph', 'kincaid', 'larry'
  ]
  private_constant :DEFAULT_STUDENTS
  PLANTS = {
    'C' => :clover,
    'G' => :grass,
    'R' => :radishes,
    'V' => :violets
  }
  def initialize(plants_in_rows, students = DEFAULT_STUDENTS)
    @students = students.map(&:downcase).sort
    @plants = plants_in_rows.each_line.map do |row|
      row.chomp.each_char.map { |character| PLANTS[character] }
    end
  end
  def plants_for(student)
    @plants.flat_map do |row|
      row[@students.index(student) * 2, 2]
    end
  end
  def method_missing(name, *args)
    if @students.include?(name.to_s)
      plants_for name.to_s
    else
      super
    end
  end
end