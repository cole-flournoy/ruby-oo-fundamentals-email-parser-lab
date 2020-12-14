# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_list
    def initialize(email_addresses)
        @emails = email_addresses
    end
    def parse
        @emails = @emails.gsub(", ", " ").split
        @emails = @emails.uniq
    end
end

# email_addresses = "john@doe.com, person@somewhere.org yaboi@gmail.com"
# parser = EmailAddressParser.new(email_addresses)

# parser.parse

# parser.email_list = "peep@fun.com, floop@fooglies.com test@bot.net"
# parser.parse
# parser.email_list

# I don't understand the use of attr_accessor here ^this yields an error