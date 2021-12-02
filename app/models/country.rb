class Country < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '日本' },
    { id: 3, name: 'ドイツ' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end