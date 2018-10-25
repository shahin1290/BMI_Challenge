module BMICalculator
    def self.metric_bmi(object)
      weight = object.weight.to_f
      height = object.height.to_f
  
      if weight > 0 && height > 0
        final_bmi = weight / (height / 100 * height / 100)
        object.bmi_value =  final_bmi.round(2)
        set_bmi_message(object)
      end
    end
  
    def self.set_bmi_message(object)
      if object.bmi_value < 18.5
        object.bmi_message = "Underweight"
      elsif object.bmi_value > 18.5 && object.bmi_value < 25
        object.bmi_message = "Healthy"
      elsif object.bmi_value > 25 && object.bmi_value < 30
        object.bmi_message = "Overweight" 
      else object.bmi_value > 30
        object.bmi_message = "Obese" 
      end 
    end
  end