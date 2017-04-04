
require_relative '/contact'
#puts me = Contact.new("Sam")

class CRM
  attr_accessor :name
  def initialize(name)
    @name = name
    puts "This CRM is called " + name
  end

puts crm_app = CRM.new("Address Book")


  def main_menu
    while true
      print_main_menu
      #user_selected = gets.to_i
      call_option (user_selected)
    end
  end

  def print_main_menu
    puts "Please select an option by typing one of the below:"
    puts  "[1] Add"
    puts  "[2] Modify"
    puts  "[3] Delete"
    puts  "[4] Display All Contacts"
    puts  "[5] Search by Attribute"
    puts  "[6] Exit"
  end

  def call_option
    crm_app.print_main_menu
    user_selected = gets.to_i
  case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit(false)
    end
  end
crm_app.print_main_menu

  def add_new_contact
    print "New Contact: "

    print "First Name: "
    first_name = gets.chomp

    print "Last Name: "
    last_name = gets.chomp

    print "Email: "
    email = gets.chomp

    print "Note: "

    note = gets.chomp
  Contact.create(first_name, last_name, email, note)
  end

=begin  def modify_existing_contact(mod_contact)
        print "Which contact would you like to modify"
        mod_contact = gets.to_i
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

  end

  def display_all_contacts

  end

  def search_by_attribute

  end
end
