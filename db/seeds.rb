# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create( {
 email: "athomasgarrett@gmail.com",
 password: "admin1"
})
user2 = User.create( {
 email: "julianne.peters@gmail.com",
 password: "123134"
})
user3 = User.create( {
 email: "krisnmccloud@gmail.com",
 password: "admin2"
})
user4 = User.create( {
 email: "christopherjstubbs93@gmail.com",
 password: "admin93"
})

profile_attributes = [
 {
   first_name: "Andy",
   last_name: "Garrett",
   phone: "+13256602651",
   home_owner: true,
   car_owner: true,
   pet_owner: true,
   medical: true,
   financial: true,
   misc: true,
   user_id: user1.id
 },
 {
   first_name: "Julianne",
   last_name: "Peters",
   phone: "+12086310997",
   home_owner: true,
   car_owner: true,
   pet_owner: true,
   medical: true,
   financial: true,
   misc: true,
   user_id: user2.id
 },
 {
   first_name: "Kristen",
   last_name: "McCloud",
   phone: "+16618775640",
   home_owner: true,
   car_owner: true,
   pet_owner: true,
   medical: true,
   financial: true,
   misc: true,
   user_id: user3.id
 },
 {
   first_name: "Chris",
   last_name: "Stubbs",
   phone: "+16199484194",
   home_owner: true,
   car_owner: true,
   pet_owner: true,
   medical: true,
   financial: true,
   misc: true,
   user_id: user4.id
 }
]

profile_attributes.each do | attributes |
 Profile.create(attributes)
end

task_attributes = [
    {
    title: "Brakes",
    description: "Have brake pads checked. Replace brake pads and have rotors turned as necessary.",
    category: "Car",
    sub_category: "General Maintenance"
    },
    {
    title: "Tires",
    description: "Have tires checked for damage and tread remaining. Replace as necessary.",
    category: "Car",
    sub_category: "General Maintenance"
    },
    {
    title: "Change Oil",
    description: "Have oil and oil filter changed every 5,000-10,000 miles as the manufacturer recommends for your vehicle and oil type.",
    category: "Car",
    sub_category: "General Maintenance"
    },
    {
    title: "Exterior Wash",
    description: "Wash exterior of vehicle, inspect paint for chips and scratches. Wash undercarriage in wintertime.",
    category: "Car",
    sub_category: "Cleaning"
    },
    {
    title: "Interior Wash",
    description: "Wipe down dashboard, vacuum mats/rugs, apply treatment to leather, and spot clean cloth interior.",
    category: "Car",
    sub_category: "Cleaning"
    },
    {
    title: "Wax",
    description: "Wax exterior of car.",
    category: "Car",
    sub_category: "Cleaning"
    },
    {
    title: "Detail Car",
    description: "Schedule interior and exterior detailing of car.",
    category: "Car",
    sub_category: "Cleaning"
    },
    {
    title: "Registration",
    description: "Send in payment for car registration, place copy of registration in vehicle, and apply new tags to licence plate.",
    category: "Car",
    sub_category: "Documentation"
    },
    {
    title: "Car Insurance",
    description: "Review and/or renew car insurance policy.",
    category: "Car",
    sub_category: "Documentation"
    },
    {
    title: "SMOG Check",
    description: "Make appoint for and have annual SMOG check completed.",
    category: "Car",
    sub_category: "Documentation
    "
    },
    {
    title: "Rotate Tires",
    description: "Make appointment to have tires rotated",
    category: "Car",
    sub_category: "General Maintenance"
    },
    {
    title: "Tire Pressure",
    description: "Check tire pressure and inspect for damage. ",
    category: "Car",
    sub_category: "General Maintenance"
    },
    {
    title: "Major Car Maintenance ",
    description: "Schedule car to have major car maintenance check. ",
    category: "Car",
    sub_category: "General Maintenance"
    },
    {
    title: "Check Fluids",
    description: "Check all fluids in car, top off as needed. ",
    category: "Car",
    sub_category: "Miscellaneous"
    },
    {
    title: "Car Battery",
    description: "Car Battery",
    category: "Car",
    sub_category: "General Maintenance"
    },
    {
    title: "Title",
    description: "File title. Get title from bank once loan is paid off.",
    category: "Car",
    sub_category: "Documentation"
    },
    {
    title: "Rotate Mattress",
    description: "Rotate and/or flip mattress. Do not flip pillow-top mattresses.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Light Fixtures",
    description: "Wipe down/dust light and ceiling fixtures.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Blinds",
    description: "Wipe down/dust all blinds. Inspect for broken slats and check hardware is secure.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Launder Comforter(s)",
    description: "Remove duvet covers and wash. Wash comforter inserts and comforters.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Shower Curtain",
    description: "Remove shower curtains and wash. Replace missing shower curtain hooks.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Shower Liner",
    description: "Check shower liner for mold, wear, and damage. Wash. Replace if necessary.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Medicine Cabinet",
    description: "Sort and organize medicine cabinet. Check expiration dates for medicines. Take expired medications for safe disposal. ",
    category: "House",
    sub_category: "Orginization"
    },
    {
    title: "Freezer",
    description: "Clean out freezer, remove expired items, clean out, and defrost.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Fridge",
    description: "Clean out fridge, remove expired items, and clean out.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Mattress Covers",
    description: "Remove and clean mattress covers.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Dishwasher",
    description: "Clean out inside and outside. Repair as needed.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Windows",
    description: "Clean windows inside and out.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Vents",
    description: "Vacuum and clean out vents. Replace or repair any not working.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Pantry",
    description: "Organize, discard expired items, and wipe down shelves.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Area Rugs",
    description: "Spot clean, vacuum, and wash all area rugs.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Dryer Vents",
    description: "Clean interior and exterior dryer vent, checking for clogs in the venting. ",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Refrigerator Coils",
    description: "Vacuum and wipe down with rag.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Cabinets",
    description: "Wipe down, polish hardware, inspect hinges and repair as needed.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Reusable Bags",
    description: "Wash all reusable grocery bags.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Garage",
    description: "Clean out, organize, and donate items to be discarded.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Septic Tank",
    description: "Put rid-x down into septic tank.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Oven",
    description: "Clean out oven, wipe down outside, resync clock.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Baseboards",
    description: "Dust and wipe down baseboards in entire house.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Carpet Care",
    description: "Vacuum carpets, spot clean, shampoo carpets or schedule deep cleaning of carpets.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Change Air Filter",
    description: "Change air filter in HVAC system.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Change air filter in HVAC system.",
    description: "Schedule HVAC servicing. ",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Smoke/CO2 Detectors",
    description: "Test and change batteries for smoke and CO2 detectors.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Aerate",
    description: "Aerate, dethatch, and aerate lawn. Consider overseeding and adding layer of lawn soil after.",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Winterize Sprinklers",
    description: "Schedule sprinkler blowout and winterizing sprinkler system.",
    category: "Yard",
    sub_category: "Yard"
    },
    {
    title: "Fertilize Lawn",
    description: "Fertilize Lawn",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Homeowners Insurance",
    description: "Review and/or renew homeowners insurance policy.",
    category: "House",
    sub_category: "Documentation"
    },
    {
    title: "Renter's Insurance",
    description: "Review and/or renew renters owners insurance policy.",
    category: "House",
    sub_category: "Documentation"
    },
    {
    title: "House Plants",
    description: "Water, trim, and rotate houseplants.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Cobwebs",
    description: "Clear cobwebs from inside and outside of home.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Garbage Day",
    description: "Collect garbage from all inside trash cans. Place garbage cans on curb.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Water Softener",
    description: "Check salt level in water softener and replace as needed.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Water Filter",
    description: "Change/clean water filter.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Fridge Water Filter",
    description: "Change in-line water filter for fridge.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Vacuum Filter",
    description: "Rinse or change vacuum filter.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Gutters",
    description: "Clean out gutters. Inspect and make repairs as needed.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Window Cornices ",
    description: "Vacuum and wipe down with rag.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Foundation Vents",
    description: "Close foundation vents in the winter. Open them in the summer.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Wash Curtains",
    description: "Take down, shake out, and wash curtains.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Stovetop",
    description: "Deep clean, check function, and schedule repair if needed.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Humidifiers",
    description: "Clean and disinfect humidifiers. ",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Fridge Baking Soda",
    description: "Change baking soda in fridge and freezer.",
    category: "House",
    sub_category: "Miscellaneous"
    },
    {
    title: "House Scents",
    description: "Change wax in wax warmers or refill scent plugins, or change aromatherapy scent.",
    category: "House",
    sub_category: "Miscellaneous"
    },
    {
    title: "Candles",
    description: "Change seasonal candles. Trim wicks.",
    category: "House",
    sub_category: "Miscellaneous"
    },
    {
    title: "Washing Machine",
    description: "Run washing machine on \"clean\" cycle.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Fire Extinguisher",
    description: "Check expiration and recertify if expiring.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Kitchen Knives",
    description: "Get kitchen knives sharpened. ",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Christmas Lights",
    description: "Put up exterior Christmas lights.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Water Bottles",
    description: "Deep clean and sanitize water bottle.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Closet",
    description: "Clean out, organize, and donate items to be discarded.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Garbage Cans",
    description: "Empty garbage cans, scrub, bleach, rinse out, and dry.",
    category: "House",
    sub_category: "Cleaning"
    },
    {
    title: "Light Bulbs",
    description: "Check all interior and exterior lights. Replace bulbs as needed.",
    category: "House",
    sub_category: "General Maintenance"
    },
    {
    title: "Pet(s) Shots",
    description: "Take pet to vet for updated shots and physical examination.",
    category: "Pets",
    sub_category: "Medical"
    },
    {
    title: "Annual Mammogram ",
    description: "Make appointment for annual mammogram.",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Colonoscopy ",
    description: "Make appointment with gastrointestinal physician for Colonoscopy.",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Dentist",
    description: "Make appointment for x rays and teeth cleaning.",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Immunizations",
    description: "Make appointment for immunizations at family physician's office.",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Refill Prescriptions",
    description: "Call pharmacies to get prescriptions refilled. Schedule appointment if needed with physicians to get refills.",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Gynecologist",
    description: "Schedule annual appointment with gynecologist's office.",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Vision",
    description: "Vision",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Pediatric Checkup",
    description: "Make appointment for kids annual Pediatrician visit.",
    category: "Medical",
    sub_category: "Personal"
    },
    {
    title: "Medicare Supplement",
    description: "Renew Medicare supplemental insurance plan.",
    category: "Money",
    sub_category: "Retirement"
    },
    {
    title: "Birthday",
    description: "It's someone's birthday. Send them a card and/or gift.",
    category: "Miscellaneous",
    sub_category: "Miscellaneous"
    },
    {
    title: "Anniversary",
    description: "It's someone's anniversary. Send them a card and/or gift.",
    category: "Miscellaneous",
    sub_category: "Miscellaneous"
    },
    {
    title: "Polish Shoes",
    description: "Polish shoes, inspect, make repairs as needed. ",
    category: "Miscellaneous",
    sub_category: "Cleaning"
    },
    {
    title: "Stamps",
    description: "Stamps",
    category: "Miscellaneous",
    sub_category: "Miscellaneous"
    },
    {
    title: "Library Books",
    description: "Return due library books",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Renew Certifications",
    description: "Renew certification before it expires.",
    category: "Miscellaneous",
    sub_category: "Documentation"
    },
    {
    title: "Passport",
    description: "Renew: get passport picture, fill out application, write check, and mail application.",
    category: "Miscellaneous",
    sub_category: "Documentation"
    },
    {
    title: "Drivers Licence",
    description: "Make appointment for renewal. Bring all necessary paperwork.",
    category: "Miscellaneous",
    sub_category: "Documentation"
    },
    {
    title: "Handgun Permit",
    description: "Make appointment for renewal. Bring all necessary paperwork.",
    category: "Miscellaneous",
    sub_category: "Documentation"
    },
    {
    title: "Renew Subscriptions",
    description: "Renew subscription to (make note)",
    category: "Miscellaneous",
    sub_category: "Documentation"
    },
    {
    title: "Cancel Credit Card",
    description: "",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "Piano Tune",
    description: "Make appointment for piano tuner to come tune piano.",
    category: "Miscellaneous",
    sub_category: "General Maintenance"
    },
    {
    title: "Piano Care",
    description: "Refill water in humidifier, change pads, change water liners.",
    category: "Miscellaneous",
    sub_category: "General Maintenance"
    },
    {
    title: "Christmas Card",
    description: "Make and write christmas card. Send to printer.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Hair Cut",
    description: "Schedule haircut, color, or treatment.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Call Mom",
    description: "Do it.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Call Dad",
    description: "Do it.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Voter Registration",
    description: "Register to vote.",
    category: "Miscellaneous",
    sub_category: "Miscellaneous"
    },
    {
    title: "Vote",
    description: "Just do it.",
    category: "Miscellaneous",
    sub_category: "Miscellaneous"
    },
    {
    title: "Backup computer",
    description: "Backup computer files to external source or cloud.",
    category: "Miscellaneous",
    sub_category: "Miscellaneous"
    },
    {
    title: "Backup Phone",
    description: "Backup phone files to external source or cloud.",
    category: "Miscellaneous",
    sub_category: "Miscellaneous"
    },
    {
    title: "Family Pictures",
    description: "Schedule session with favorite photographer for family pictures.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Prepare For Taxes",
    description: "Gather receipts, W2's, mortgage statement, student loan statement, and bank statements.",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "Prepare Taxes",
    description: "Prepare and file state and federal taxes.",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "Credit Report",
    description: "Check credit report, dispute errors, and make plan to improve credit score.",
    category: "Money",
    sub_category: "Miscellaneous"
    },
    {
    title: "Identity Protection",
    description: "Check identithy protection report. Follow up on any activity.",
    category: "Money",
    sub_category: "Miscellaneous"
    },
    {
    title: "Property Tax",
    description: "Pay property taxes and file documentation.",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "Trash Bill",
    description: "Pay trash bill.",
    category: "Money",
    sub_category: "Miscellaneous"
    },
    {
    title: "Cancel Membership",
    description: "Call and cancel free trial membership.",
    category: "Money",
    sub_category: "Miscellaneous"
    },
    {
    title: "Retirement Plan",
    description: "Review plans, review/update beneficiaries, update financial plan.",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "Budget",
    description: "Review and adjust.",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "Charitable Contributions",
    description: "Track and document charitable contributions for taxes.",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "File Cabinet",
    description: "Go through file cabinet, shred documents no longer needed.",
    category: "Money",
    sub_category: "Documentation"
    },
    {
    title: "Rabies Vaccination",
    description: "Make appointment with Vet to get pet(s) annual vaccination.",
    category: "Pets",
    sub_category: "Medical"
    },
    {
    title: "Clip pet(s) nails",
    description: "",
    category: "Pets",
    sub_category: "Grooming"
    },
    {
    title: "Wash pet(s)",
    description: "Brush and wash pet.",
    category: "Pets",
    sub_category: "Grooming"
    },
    {
    title: "Groomer",
    description: "Take pet's to the groomer for clipping and nails.",
    category: "Pets",
    sub_category: "Grooming"
    },
    {
    title: "Annual physical",
    description: "Make appointment for annual physical examination with family physician.",
    category: "Pets",
    sub_category: "Medical"
    },
    {
    title: "Sprinklers",
    description: "Turn system on, check for any leaks, unclog heads, adjust heads and spray patterns, and adjust zones/times.",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Screens",
    description: "Inspect all screens, repair and/or replace as needed.",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Overseed Lawn",
    description: "Gather seeds to match lawn type, rake lawn, dethatch, and overseed. Follow by a generous watering.",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Pruning",
    description: "Prune bushes and trees. Trim decorative grasses. ",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Outdoor Hoses",
    description: "Disconnect hoses from house, drain, and store in freeze proof place.",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Lawn Mower",
    description: "Schedule annual service or change spark plugs, drain fuel, change oil, change air filter.",
    category: "House",
    sub_category: "Yard"
    },
    {
    title: "Call Grandma",
    description: "Do it.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Call Grandpa",
    description: "Do it.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Call Kids",
    description: "Do it.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Junk Email",
    description: "Go through email and unsubscribe to things you no longer want to receive.",
    category: "Miscellaneous",
    sub_category: "Personal"
    },
    {
    title: "Credit Card",
    description: "Make monthly payment. ",
    category: "Money",
    sub_category: "Personal"
    }
]

task_attributes.each do | attributes |
  Task.create(attributes)
end
