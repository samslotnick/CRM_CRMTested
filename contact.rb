class Contact
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note
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
     @@contacts

  end

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

  def self.delete_all
     @@contacts.clear
  end

  def full_name
    return "#{first_name} #{last_name}"
  end


  def delete
    @@contacts.each do |contact|
    @@contacts.delete_if { |contact| contact == first_name || contact = last_name }
  end
end


end
