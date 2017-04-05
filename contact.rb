class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note
  # This method should initialize the contact's attributes
  @@contacts = []
  @@id = 0
  def initialize(first_name, last_name, email, note = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end


  def self.create(first_name, last_name, email, note = 'N/A')
      new_contact = new(first_name, last_name, email, note)
      @@contacts << new_contact
      return new_contact
  end


  def self.all
    return @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(contact)
    @@contacts.each do |contact|
      if contact == @id
        return contact.to_s
      end
  end
  end
  def update (note, v)
    @note = v

  end

  def self.find_by(k, v)
    @@contacts.each do |contact|
      if k == "first_name"
        search = contact.first_name
      elsif k == 'last_name'
        search = contact.last_name
      elsif k == 'email'
        search == contact.email
      end

      if search == v
        return contact
      else
        return 0
      end
      end
    end







  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.clear
  end

  def full_name
    return "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete_if { |contact| contact == first_name || contact = last_name }
  end

  # Feel free to add other methods here, if you need them.
#puts me = Contact.new("Sam")

end
contact = Contact.new('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
# This method should allow you to specify
# 1. which of the contact's attributes you want to update
# 2. the new value for that attribute
# and then make the appropriate change to the contact
#def update_name=(first_name)
#  @first_name = first_name
#  end
#def update_lastname=(last_name)
#  @last_name = last_name
#  end
#  def update_email=(email)
#  @email = email
#end
