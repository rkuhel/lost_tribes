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

v1 = Vendor.create( name: "whole foods", address: "110 3rd avenue", city: "new york city", phone: "212 322 3444", email: "ny@wholefoods.com", comment: "yayy", password: "whole", admin: false)
v2 = Vendor.create( name: "mike's bistro", address: "316 east 11th street", city: "new york city", phone: "212 322 3444", email: "mike@mike.com", comment: "boss", password: "mike", admin: true)
v3 = Vendor.create( name: "terry's shop", address: "carmine street", city: "new york city", phone: "212 322 9444", email: "terry@terry.com", comment: "wowwwwwww!", password: "terry", admin: false)
v4 = Vendor.create( name: "Ted Bar", address: "80 lafayette", city: "new york city", phone: "212 322 3466", email: "george@george.com", comment: "hunugry", password: "george", admin: false)


e1.customers << c1 << c2 << c3 
e2.customers << c3
e3.customers << c4 << c5
v1.events << e1 << e2
v2.events << e5
v3.events << e3 << e4
c1.events << e3
c2.events << e4
c3.events << e1 << e2

