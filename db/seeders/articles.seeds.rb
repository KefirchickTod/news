Article.delete_all

50.times do |i|

  title = Faker::Book.title
  slug  = title.parameterize

  Article.create title:       title,
                 full_text:   Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
                 short_text:  Faker::Lorem.paragraph_by_chars(number: 64, supplemental: false),
                 article_categories_id: rand(1..5),
                 slug:        slug,
                 author_id:   1, #admin
                 public: rand(0..1)
end

