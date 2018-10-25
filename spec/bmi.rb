load 'bmi_calculator.rb'

class Person
  attr_accessor :bmi_value, :bmi_message, :weight, :height

  def initialize(options={})
    @weight = options[:weight]
    @height = options[:height]
  end

  def calculate_bmi_met
    results = BMICalculator.metric_bmi(self)
  end
end

person = Person.new({ weight: 69, height: 160 })
puts person.calculate_bmi_met