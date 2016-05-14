# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.upto(3) do |i|
  TagCategory.create(
    name: "親tag#{i}"
  )
end

1.upto(5) do |i|
  Tag.create(
    name: "子tag#{i}",
    tag_category: TagCategory.find((i / 3) + 1)
  )
end

1.upto(5) do |i|
  Recipe.create(
    name: "レシピ#{i}",
    material: "材料#{i}",
    content: "本文#{i}",
    memo: "メモ#{i}",
    tags: [Tag.find((i / 2) + 1)]
  )
end
