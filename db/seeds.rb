Role.delete_all
User.delete_all
Room.delete_all
Specialty.delete_all
Profile.delete_all

role = Role.create([{name:"Admin", code:"admin"},
                    {name:"Default", code:"default"},
                    {name:"Physician", code:"physician"}])

User.create(email: "test@test.com",
            password: "123456",
            role_id: Role.find_by(code: "default"))

physician = User.create(email: "test@test1.com", password: "123456", role_id: 3)
physician2 = User.create(email: "test@test2.com", password: "123456", role_id: 3)
physician3 = User.create(email: "test@test3.com", password: "123456", role_id: 3)

(1..10).each do |number|
  Room.create!(number: number)
end

specialty = Specialty.create!(name: "General")

Profile.create!(first_name: "Joe", 
                middle_name: "Bobby", 
                last_name: "Jun", 
                specialty_id: specialty.id,
                user_id: 3,
                birth: "19820602", 
                marital_status: true, 
                home_phone: "1234567", 
                cell_phone: "1234456",
                gender: true, 
                license: "jlk3214",
                )
