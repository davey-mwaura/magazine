require_relative './author.rb'
require_relative './magazine.rb'
require_relative './article.rb'

# Create authors
author1 = Author.new("John Smith")
author2 = Author.new("Jane Doe")

# Create magazines
magazine1 = Magazine.new("Magazine 1", "Category 1")
magazine2 = Magazine.new("Magazine 2", "Category 2")


# create some articles

article3 = Article.new(author1, magazine1, "The Rise of Esports")
article4 = Article.new(author2, magazine2, "The History of the Super Bowl")


# Add articles to authors
author1.add_article(magazine1, "Article 1")
author1.add_article(magazine2, "Article 2")


# Test author methods
puts author1.name # "John Smith"
puts author1.articles.count # 3
puts author1.magazines.count # 2
puts author1.topic_areas # ["Category 1", "Category 2"]

# Test magazine methods
puts magazine1.name # "Magazine 1"
puts magazine1.category # "Category 1"
puts magazine1.contributors.count # 2
puts Magazine.all

# test article methods
puts article3.title # "The Rise of Esports"
puts article3.author.name