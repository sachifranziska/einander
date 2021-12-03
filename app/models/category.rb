class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '就労' },
    { id: 3, name: 'ワーキングホリデー' },
    { id: 4, name: 'Ausbildung(職業訓練)' },
    { id: 5, name: '大学' },
    { id: 6, name: '交換留学' },
    { id: 7, name: '語学学校' },
    { id: 8, name: 'なし' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :questions
end