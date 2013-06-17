Event.delete_all
Customer.delete_all
Vendor.delete_all 



c1 = Customer.create(name: "Bob Dylan", email: "bob@gmail.com", zip: "10003", comment: "owns a restaurant")
c2 = Customer.create(name: "Jim Jones", email: "jim@gmail.com", zip: "10010",  comment: "cool dude")
c3 = Customer.create(name: "Mike Knoph", email: "mike@gmail.com", zip: "10014",  comment: "wants to have beer at her wedding")
c4 = Customer.create(name: "Horatio", email: "horat@gmail.com", zip: "10017",  comment: "drunk")
c5 = Customer.create(name: "Sue Lee", email: "slee@gmail.com", zip: "10019",  comment: "So psyched.")

e1 = Event.create(title: "Tumblr Party", address: "110 3rd avenue", city: "new york city", date: "2013-09-23 06-30",  description: "office party")
e2 = Event.create(title: "birthday", address: "110 3rd avenue", city: "new york city", date: "2013-07-23 06-30",  description: "funeral party")
e3 = Event.create(title: "Funeral", address: "110 3rd avenue", city: "new york city", date: "2013-06-23 06-30", description: "small party")
e4 = Event.create(title: "secret party", address: "110 3rd avenue", city: "new york city", date: "2013-011-23 06-30",  description: "rad party")
e5 = Event.create(title: "forgot party", address: "110 3rd avenue", city: "new york city", date: "2013-012-23 06-30",  description: "Huge party")

v1 = Vendor.create( name: "whole foods", address: "110 3rd avenue", city: "New York City", phone: "212 322 3454", email: "ny@wholefoods.com", comment: "yayy", admin: false, password: "wholef")
v2 = Vendor.create( name: "mike", address: "316 east 11th street", city: "New York City", phone: "212 322 3419", email: "mike@mike.com", comment: "boss", admin: true, password: "mikesemail")
v3 = Vendor.create( name: "terry's shop", address: "10 E 21ST ST", city: "New York City", phone: "212 322 9224", email: "terry@terry.com", comment: "wowwwwwww!", admin: false, password: "terrys")
v4 = Vendor.create( name: "Ted Bar", address: "80 lafayette", city: "New York City", phone: "212 322 3499", email: "george@george.com", comment: "hunugry", admin: false, password: "george")
v4 = Vendor.create( name: "Jersey Beer", address: "34 Wayne St", city: "Jersey City", phone: "555 322 8752", email: "jersey@beer.com", comment: "hunugry", admin: false, password: "jersey")
v4 = Vendor.create( name: "Babylonia", address: "41 First Avenue", city: "New York City", phone: "212 322 3336", email: "john@babylonia.com", comment: "hunugry", admin: false, password: "babylon")
v4 = Vendor.create( name: "Cork City Pub", address: "3rd & Bloomfield Street", city: "Hoboken", phone: "917 884 6136", email: "jim@cork.com", comment: "Hoboken Rules!", admin: false, password: "cork22")
v4 = Vendor.create( name: "Midtown Pub", address: "200 Park Ave", city: "New York City", phone: "212 445 6136", email: "davie@gcbar.com", comment: "My Bar", admin: false, password: "rkuhel")
v4 = Vendor.create( name: "Ryan Bar", address: "200 9th Ave", city: "New York City", phone: "212 333 4444", email: "ryan@ryan.com", comment: "My Bar", admin: true, password: "rkuhel")
v4 = Vendor.create( name: "Brass Monkey", address: "55 Little W 12th St", city: "New York City", phone: "212 675 6686", email: "brass@brass.com", comment: "What Brass", admin: false, password: "monkey")




e1.customers << c1 << c2 << c3 
e2.customers << c3
e3.customers << c4 << c5
v1.events << e1 << e2
v2.events << e5
v3.events << e3 << e4
c1.events << e3
c2.events << e4
c3.events << e1 << e2

