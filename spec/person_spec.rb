require_relative '../person'
# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

RSpec.describe Person do
  let(:person_with_middle_name)  { Person.new(first_name: "John", middle_name: "Michael Parry", last_name: "De Winton") }
  let(:person_without_middle_name)  { Person.new(first_name: "John", last_name: "Cook")}

  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      expect(person_with_middle_name.full_name).to eq("John Michael Parry De Winton")
    end
    it "does not add extra spaces if middle name is missing" do
      expect(person_without_middle_name.full_name).to eq("John Cook")
    end
  end

  describe "#full_name_with_middle_initial" do
    it "returns a full name with a middle initial" do
      expect(person_with_middle_name.full_name_with_middle_initial).to eq("John M De Winton")
    end
    it "there should be no extra spaces or period if middle name is missing" do
      expect(person_without_middle_name.full_name_with_middle_initial).to eq("John Cook")
    end
  end

  describe "#initials" do
    it 'return all the the initials of the full name' do
      expect(person_with_middle_name.initials).to eq("JMD")
    end
    it 'returns the initials if middle name is missing' do
      expect(person_without_middle_name.initials).to eq("JC")
    end
  end
end


