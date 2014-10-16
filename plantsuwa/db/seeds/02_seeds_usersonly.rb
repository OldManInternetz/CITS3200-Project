#encoding: utf-8 

puts "Seeding main users..."

# Admins
User.create(username: 'Michael', password: 'MiChAeL', password_confirmation: 'MiChAeL', email: 'michael@michael.com', admin: 'true', trusted: 'true')
User.create(username: 'Duncan', password: 'DuNcAn', password_confirmation: 'DuNcAn', email: 'duncan@duncan.com', admin: 'true', trusted: 'true')

# Trusted Users
User.create(username: 'Trusted', password: 'TrUsTeD', password_confirmation: 'TrUsTeD', email: 'trustme@really.com', admin: 'false', trusted: 'true')

# Regular Users

"""

User.create(username: 'Don', password: 'password', password_confirmation: 'password', email: 'don@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Sally', password: 'password', password_confirmation: 'password', email: 'sally@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Bobby', password: 'password', password_confirmation: 'password', email: 'bobby@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Betty', password: 'password', password_confirmation: 'password', email: 'betty@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Roger', password: 'password', password_confirmation: 'password', email: 'roger@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Harry', password: 'password', password_confirmation: 'password', email: 'harry@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Joan', password: 'password', password_confirmation: 'password', email: 'joan@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Peggy', password: 'password', password_confirmation: 'password', email: 'peggy@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Mitch', password: 'password', password_confirmation: 'password', email: 'mitch@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Peter', password: 'password', password_confirmation: 'password', email: 'peter@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Duck', password: 'password', password_confirmation: 'password', email: 'duck@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Salvatore', password: 'password', password_confirmation: 'password', email: 'salvatore@madmen.com', admin: 'false', trusted: 'false')
User.create(username: 'Trudy', password: 'password', password_confirmation: 'password', email: 'trudy@madmen.com', admin: 'false', trusted: 'false')



"""


