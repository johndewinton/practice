class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@middle_name} #{@last_name}".squeeze(' ')
  end

  def full_name_with_middle_initial
    if !@middle_name.nil?
      "#{@first_name} #{@middle_name[0]} #{@last_name}"
    else
      full_name
    end
  end

  def initials
    if !@middle_name.nil?
      ("#{@first_name[0]} #{@middle_name[0]} #{@last_name[0]}").gsub!(/\s+/, '')
    else
      ("#{@first_name[0]} #{@last_name[0]}").gsub!(/\s+/, '')
    end
  end
end
