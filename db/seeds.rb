# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_attributes = [
  {
    email: "athomasgarrett@gmail.com",
    password: "admin1"
  },
  {
    email: "julianne.peters@gmail.com",
    password: "123134"
  },
  {
    email: "krisnmccloud@gmail.com",
    password: "admin2"
  },
  {
    email: "christopherjstubbs93@gmail.com",
    password: "admin93"
  }
]

user_attributes.each do | attributes |
  User.create(attributes)
end

profile_attributes = [
  {
    first_name: "Andy",
    last_name: "Garrett",
    phone: "800-555-5555",
    home_owner: true,
    car_owner: true,
    user_id: 1
  },
  {
    first_name: "Julianne",
    last_name: "Peters",
    phone: "800-555-1212",
    home_owner: true,
    car_owner: true,
    user_id: 2
  },
  {
    first_name: "Kristen",
    last_name: "McCloud",
    phone: "800-777-7777",
    home_owner: true,
    car_owner: true,
    user_id: 3
  },
  {
    first_name: "Chris",
    last_name: "Stubbs",
    phone: "800-123-4567",
    home_owner: true,
    car_owner: true,
    user_id: 4
  }
]

profile_attributes.each do | attributes |
  Profile.create(attributes)
end

task_attributes = [
{
  title: "Clean oven/microwave",
  description: "Deep clean",
  category: "House",
  sub_category: "Cleaning"
},
{
  title: "Clean baseboards",
  description: "Dust and wipe",
  category: "House",
  sub_category: "Cleaning"
},
{
  title: "Carpets/floors",
  description: "Shampoo carpets and/or wax floors",
  category: "House",
  sub_category: "Cleaning"
},
{
  title: "Change air filters",
  description: "Change it",
  category: "House",
  sub_category: "General Maintenance"
},
{
  title: "Service furnace/A.C.",
  description: "Call to schedule service",
  category: "House",
  sub_category: "General Maintenance"
},
{
  title: "Check CO2/smoke detectors",
  description: "Test & change batteries",
  category: "House",
  sub_category: "General Maintenance"
},
{
  title: "Aerate lawn",
  description: "Schedule lawn company to aerate lawn",
  category: "House",
  sub_category: "Yard"
},
{
  title: "Fall sprinkler care",
  description: "Schedule fall srpinkler blowout",
  category: "House",
  sub_category: "Yard"
},
{
  title: "Fertalize yard",
  description: "Apply season appropriate fertalizer to lawn/flower beds",
  category: "House",
  sub_category: "Yard"
},
{
  title: "Brake maintenance",
  description: "Check/change brake pads",
  category: "Car",
  sub_category: "General Maintenance"
},
{
  title: "Change tires",
  description: "Check rubber ",
  category: "Car",
  sub_category: "General Maintenance"
},
{
  title: "Tire maintenance",
  description: "Check tread level change tires if appropriate",
  category: "Car",
  sub_category: "General Maintenance"
},
{
  title: "Exterior wash",
  description: "Wash car's exterior",
  category: "Car",
  sub_category: "Cleaning"
},
{
  title: "Interior wash",
  description: "Wash car's interior",
  category: "Car",
  sub_category: "Cleaning"
},
{
  title: "Wax car",
  description: "Wax car's exterior",
  category: "Car",
  sub_category: "Cleaning"
},
{
  title: "Car registration",
  description: "Renew car's regirstation",
  category: "Car",
  sub_category: "Documentation"
},
{
  title: "Car insurance",
  description: "Review and renew car insurance policy",
  category: "Car",
  sub_category: "Documentation"
},
{
  title: "SMOG check",
  description: "Make SMOG check appointment",
  category: "Car",
  sub_category: "Documentation"
}
]

task_attributes.each do | attributes |
  Task.create(attributes)
end

my_task_attributes = [
{
  due_date: 4.months.from_now,
  completed: false,
  frequency: 100,
  notes: "none for this task",
  task_id: 1,
  user_id: 1
},
{
  due_date: 4.months.from_now,
  completed: false,
  frequency: 365,
  notes: "none for this task",
  task_id: 2,
  user_id: 1
},
{
  due_date: 10.months.from_now,
  completed: false,
  frequency: 100,
  notes: "none for this task",
  task_id: 3,
  user_id: 2
},
{
  due_date: 9.months.from_now,
  completed: true,
  frequency: 100,
  notes: "none for this task",
  task_id: 4,
  user_id: 2
},
{
  due_date: 8.months.from_now,
  completed: false,
  frequency: 100,
  notes: "none for this task",
  task_id: 5,
  user_id: 3
},
{
  due_date: 7.months.from_now,
  completed: false,
  frequency: 30,
  notes: "none for this task",
  task_id: 6,
  user_id: 3
},
{
  due_date: 6.months.from_now,
  completed: true,
  frequency: 100,
  notes: "none for this task",
  task_id: 8,
  user_id: 4
},
{
  due_date: 5.months.from_now,
  completed: false,
  frequency: 100,
  notes: "none for this task",
  task_id: 12,
  user_id: 4
}
]

my_task_attributes.each do | attributes |
  MyTask.create(attributes)
end
