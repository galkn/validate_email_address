module ValidateEmailAddress

  def validates_email_address_of attr_name
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    self.validates_format_of attr_name, 
                             :with => email_regex, 
                             :message => "is not a valid email address"
  end
  
end