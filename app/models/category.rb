class Category < ActiveHash::Base
  self.category = [
    { id: 1,  name: '選択してください' },
    { id: 2,  name: '食品' },
    { id: 3,  name: '雑貨' },
    { id: 4,  name: '日用消耗品' },
    { id: 5,  name: 'インテリア' },
    { id: 6,  name: '本・音楽・ゲーム' },
    { id: 7,  name: 'おもちゃ・ホビー・グッズ' },
    { id: 8,  name: '家電・スマホ・カメラ' },
    { id: 9,  name: 'スポーツ・レジャー' },
    { id: 10, name: 'ハンドメイド' },
    { id: 11, name: 'ブランド・宝飾品' },
    { id: 12, name: '嗜好品' },
    { id: 13, name: '金券・ギフトカード' },
    { id: 14, name: 'その他' }
  ]
end
