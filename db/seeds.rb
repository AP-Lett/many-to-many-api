user1 = User.create!(name: "Ursa Minor")
user2 = User.create!(name: "Orion Sbelt")
user3 = User.create!(name: "Cassi Opeia")

project1 = Project.create!(name: "QA", description: "Verify code.")
project2 = Project.create!(name: "PM", description: "Oversee timeline")
project3 = Project.create!(name: "UI", description: "Design interface")

Assignment.create!(user: user1, project: project1)
Assignment.create!(user: user1, project: project2)

Assignment.create!(user: user2, project: project1)
Assignment.create!(user: user2, project: project3)

Assignment.create!(user: user3, project: project3)
