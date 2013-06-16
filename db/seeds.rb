Event.delete_all
Customer.delete_all
Vendor.delete_all 



c1 = Customer.create(name: "Bob Dylan", email: "bob@gmail.com", zip: "10003", comment: "owns a restaurant")
c2 = Customer.create(name: "Jim Jones", email: "jim@gmail.com", zip: "10010",  comment: "cool dude")
c3 = Customer.create(name: "Mike Knoph", email: "mike@gmail.com", zip: "10014",  comment: "wants to have beer at her wedding")
c4 = Customer.create(name: "Horatio", email: "horat@gmail.com", zip: "10017",  comment: "drunk")
c5 = Customer.create(name: "Sue Lee", email: "slee@gmail.com", zip: "10019",  comment: "So psyched.")

e1 = Event.create(title: "Tumblr Party", date: "2013-09-23 06-30", location: "10 E 21ST ST", description: "office party")
e2 = Event.create(title: "birthday", date: "2013-07-23 06-30", location: "110 5th avenue apt 10d", description: "funeral party")
e3 = Event.create(title: "Funeral", date: "2013-06-23 06-30", location: "108 7th avenue apt 10d", description: "small party")
e4 = Event.create(title: "secret party", date: "2013-011-23 06-30", location: "10 3rd St apt 10d", description: "rad party")
e5 = Event.create(title: "forgot party", date: "2013-012-23 06-30", location: "110 9th avenue apt 10d", description: "Huge party")

v1 = Vendor.create( name: "whole foods", address: "manhattan", phone: "212 322 3444", email: "ny@wholefoods.com", comment: "yayy", password: "whole", admin: false)
v2 = Vendor.create( name: "mike", address: "brooklyn", phone: "212 322 3444", email: "mike@mike.com", comment: "boss", password: "mike", admin: true)
v3 = Vendor.create( name: "terry", address: "manhattan", phone: "212 322 9444", email: "terry@terry.com", comment: "wowwwwwww!", password: "terry", admin: false)
v4 = Vendor.create( name: "george", address: "Staten Island", phone: "212 322 3466", email: "george@george.com", comment: "hunugry", password: "george", admin: false)
v5 = Vendor.create( name: "ted", address: "manhattan", phone: "212 322 3444", email: "ted@ted.com", comment: "thirsty", password: "ted", admin: false)
v6 = Vendor.create( name: "lee", address: "bronx", phone: "212 322 5544", email: "lee@lee.com", comment: "super", password: "lee", admin: false)


e1.customers << c1 << c2 << c3 
e2.customers << c3
e3.customers << c4 << c5
v1.events << e1 << e2
v2.events << e5
v3.events << e3 << e4
c1.events << e3
c2.events << e4
c3.events << e1 << e2

