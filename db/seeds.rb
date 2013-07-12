UserAchievement.all.destroy
Achievement.all.destroy
Badge.all.destroy
UserBadge.all.destroy
User.all.destroy

#create a initial user
User.create({email: "napcracka@gmail.com", password: 'password', password_confirmation: 'password'})

for i in 0..10
  Achievement.create({ title: 'Protein Shaker' + i.to_s, description: 'Consume a protein shake 3 times a week', weight: 2, category: :nutritional, difficulty: :medium })
  Achievement.create({ title: 'Carrot Eater' + i.to_s, description: 'Eat a carrot a day for a week', weight: 2, category: :nutritional, difficulty: :easy })
  Achievement.create({ title: 'Pullup Master' + i.to_s, description: 'Do 100 pullups in a day', weight: 4, category: :physical, difficulty: :medium })
end

ach = Achievement.all

b = Badge.create({title: 'Sniper', description: 'YOU ARE A SNIPER', classification: :novice, number_of_achievements_needed: 2})
b.achievements << ach[0]
b.achievements << ach[1]
b = Badge.create({title: 'Medic', description: 'YOU ARE A Medic', classification: :experienced, number_of_achievements_needed: 3})
b.achievements << ach[2]
b.achievements << ach[3]
b.achievements << ach[4]
b = Badge.create({title: 'Trooper', description: 'YOU ARE A Trooper',classification: :expert, number_of_achievements_needed: 2})
b.achievements << ach[5]
b.achievements << ach[6]


