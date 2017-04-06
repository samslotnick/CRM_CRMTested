
require_relative 'contact'


class CRM < Contact

  attr_accessor :name, :last_name, :email, :contacts
  def initialize(name)
    @name = name
    puts "This CRM is called " + name

end


puts crm_app = CRM.new("Address Book")
  def print_main_menu
    puts "Please select an option by typing one of the below:"
    puts  "[1] Add"
    puts  "[2] Modify"
    puts  "[3] Delete"
    puts  "[4] Display All Contacts"
    puts  "[5] Search by Attribute"
    puts  "[6] Exit"
  end

  puts  Contact.create('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
  puts Contact.create('Sam', 'Slotnick', '123', ':)')
  puts Contact.create('Joe', 'Sixpack', '789', 'notejs')
  puts Contact.create('Guy', 'Person', '67', 'notegp')

  def call_option(name)
    user_selected = gets.to_i
  case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
    end
  end


  def add_new_contact
    print "New Contact:
    "

    print "First Name: "
    @first_name = first_name
    first_name = gets.chomp

    print "Last Name: "
      @last_name = last_name
      last_name = gets.chomp

    print "Email: "
    @email = email
     email = gets.chomp

    print "Note: "
      @note = note
      note = gets.chomp

    puts Contact.create(first_name, last_name, email, note)


  end

 def modify_existing_contact
   puts display_all_contacts
   print "Enter what you would like to enter in the Contact's note sections"
   mod_input = gets.to_i
   puts @@contacts.fetch(mod_input)


    input_mod = gets.chomp




end


      #    @@contacts.each do |contact|
      #   if @@contacts.include?(mod_contact)
      #     puts contact
      #     else
      #       puts "Could not find contact"
      #        end
      #   end

        #  if k == last_name
        #    puts "What would you like to change #{contact}'s last name to?"
        #       @last_name = last_name = gets.chomp
        #       return contact

  #     end
  #   end









  #



=begin contact delete_if
        print "Do you want to modify contact's:
         [1]first name
         [2]last name
         [3]email
         [4]note"
        case mod_contact
          when 1 then update_name
              print "Change first name to:"
              updated_fn = gets.chomp
              return update_name(updated_fn)
          when 2 then update_lastname
              print "Change last name to:"
              updated_ln = gets.chomp
              return update_lastname(updated_ln)
          when 3 then updated_email
              print "Change email to:"
              updated_email = gets.chomp
              return update_email(updated_email)
          when 4 then update_email
              print "Change note to:"
              u_note = gets.chomp
              return note(u_note)
          end
  end
=end
  def delete_contact
    puts display_all_contacts
    puts "Enter of ID # of contact to delete"
    input = gets.to_i
    puts @@contacts.delete_at(input)
    #@@contacts.each do |contact|
    #  contact.each do |k, v|
    #    print "#{k}, #{v}"
  #    end
    end
    #@id = gets.to_i
    #puts @@contacts.delete_at(id)


    #puts @@contacts.delete_if {|first_name, last_name| first_name || last_name == input}

        #contact = contact.inspect
        #  del_contact = contact.include?(input)
        #  puts @@contacts.delete(del_contact)

      #if name.include?(input) == true then puts "test"
    #end
    #contact |k, v|
    #contact = contact.inspect
    #if contact.include?(input) == true
    #puts contact.delete(input)
    #  puts contact.pop
    #end

  #end


  def display_all_contacts

  puts @@contacts.to_s

  end

  def search_by_attribute
    
    puts Contact.find_by
  #  puts "Search by name, email or note:"
  #  input = gets.to_i
  #  all_info = @@contacts.fetch(input + 1)
  #  puts all_info.inspect


    #puts "k:"
    #k = gets.chomp
    #puts "v:"
    #3v = gets.chomp
    #return Contact.find_by(k,v)
    #puts @contact
  end
  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end
crm_app.main_menu

end
