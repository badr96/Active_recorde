
require 'faker'
10.times do
  User.create(F_name: Faker::Pokemon.name, L_name: Faker::Name.last_name, email: Faker::Internet.email)
end

15.times do
  Article.create(user_id: User.all.sample.id, Title: 'bliblil', Content: 'tatatta' )
end

5.times do
  Categorie.create(name: Faker::Pokemon.name)
end

15.times do
  Commentaire.create(user_id: User.all.sample.id, article_id: Article.all.sample.id, Content: Faker::HowIMetYourMother.quote )
end

15.times do
  Like.create(user_id: User.all.sample.id, article_id: Article.all.sample.id)
end

Article.all.each do |article|
  article.categorie_id = Categorie.all.sample.id
  article.save
end