class Person
  # attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  # :weight, :handed, :complexion, :t_shirt_size,
  # :wrist_size, :glove_size, :pant_length, :pant_width
  
  def initialize(avi_attributes)
    self.class.attr_accessor(:name, :birthday, :hair_color, :eye_color, :height,
    :weight, :handed, :complexion, :t_shirt_size,
    :wrist_size, :glove_size, :pant_length, :pant_width)
    
    # iterate over attributes
    avi_attributes.each do |key,value|
      self.send("#{key}=",value)
    end
  end
end
