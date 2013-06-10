Event.delete_all
Customer.delete_all
Vendor.delete_all 



c1 = Customer.create(name: "Bob Dylan", email: "bob@gmail.com", zip: "10003", comment: "owns a restaurant")
c2 = Customer.create(name: "Jim Jones", email: "jim@gmail.com", zip: "10010",  comment: "cool dude")
c3 = Customer.create(name: "Mike Knoph", email: "mike@gmail.com", zip: "10014",  comment: "wants to have beer at her wedding")

e1 = Event.create(title: "Tumblr Party", date: "2013-09-23 06-30", location: "110 3rd avenue apt 10d", description: "office party")

v1 = Vendor.create( name: "whole foods", address: "manhattan", phone: "212 322 3444", email: "ny@wholefoods.com", comment: "yayy")


e1.customers << c1 << c2 << c3 

v1.events << e1 
