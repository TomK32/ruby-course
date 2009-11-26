
# grackle is small libary to access twitter, retrieve data from it, send data to twitter and more.
# find out more about grackle here: http://github.com/hayesdavis/grackle
require 'rubygems'
require 'grackle'

# To communicate with twitter we need a client.
# yes, it's this simple, all boring things are hidden
client = Grackle::Client.new

# First let's see for some information about a User
puts y client.user.show('TomK32')

# We can also search
puts y client.search? :q => 'ruby twitter'


# here you have to change the username and password
client = Grackle::Client.new(:auth=>{:type=>:basic,:username=>'yourusername',:password=>'yourpassword'})

# and now you can put a new status
client.statuses.update! :status=>'this status is from my grackle client'

# Want to try more, read the official API and just try out. http://apiwiki.twitter.com/Twitter-API-Documentation