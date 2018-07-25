class Contact
  @@contacts = [] #We are using a class variable to store the contact list
  @@next_id = 1000

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
# Default values must come from the end of the argument list
    @@id = nil
  end

  # READERS
  # Allow you to ask an instance to read it

  def self.all
    @@contacts
  end

  def self.create
    new_contact = self.new(first_name, last_name, email, notes = 'N/A')
    new_contact.save
    return new_contact
  end

  def self.find(id)
    # Iterate through the list of contacts (@@contacts)
    # Find the particular instance
    # Return that instance 
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

# WRITERS
# You need to put in a writer to change the instance
# There is a boundary between instances and the outside world
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

# Regular Instance Methods
  def full_name
# first_name, is the method... Goes to the reader
# This is the accepted style
# @first_name is the value/variable.. instance variable
    return "#{first_name} #{last_name}"
  end

  def save
    @id = @@next_id
    @@next_id += 1
    @@contacts << self # Self is the object you are currently working with
  end
end
