Article.delete_all

25.times do |i|

  title = Faker::Book.title
  slug  = title.parameterize

  article = Article.new(title:                 title,
                        full_text:             Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
                        short_text:            Faker::Lorem.paragraph_by_chars(number: 64, supplemental: false),
                        article_categories_id: rand(1..4),
                        slug:                  slug,
                        author_id:             1, #admin
                        public: rand(0..1)
  )

  unless article.save
    puts article.errors
    raise "Error save article with massage[#{article.errors}]"
  end
end

