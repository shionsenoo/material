class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '木材・板材' },
    { id: 3, name: '接着剤' },
    { id: 4, name: '壁材' },
    { id: 5, name: 'クロス（壁紙）' },
    { id: 6, name: '工具類' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items

  end