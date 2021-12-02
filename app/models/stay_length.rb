class StayLength < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1年未満' },
    { id: 3, name: '1~3年間' },
    { id: 4, name: '3~5年間' },
    { id: 5, name: '5~9年間' },
    { id: 6, name: '10年以上' },
    { id: 7, name: '20年以上' },
    { id: 8, name: '30年以上' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end