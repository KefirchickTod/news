ArticleCategory.delete_all

[1..5].each do |i|

  title = Faker::Hipster.sentence(word_count: 1)

  ArticleCategory.create title: title, slug: title.parameterize

end
