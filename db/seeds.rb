# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = %w(
  北海道
  青森県
  岩手県
  宮城県
  秋田県
  山形県
  福島県
  茨城県
  栃木県
  群馬県
  埼玉県
  千葉県
  東京都
  神奈川県
  新潟県
  富山県
  石川県
  福井県
  山梨県
  長野県
  岐阜県
  静岡県
  愛知県
  三重県
  滋賀県
  京都府
  大阪府
  兵庫県
  奈良県
  和歌山県
  鳥取県
  島根県
  岡山県
  広島県
  山口県
  徳島県
  香川県
  愛媛県
  高知県
  福岡県
  佐賀県
  長崎県
  熊本県
  大分県
  宮崎県
  鹿児島県
  沖縄県
)

kanas = %w(
  ほっかいどう
  あおもり
  いわて
  みやぎ
  あきた
  やまがた
  ふくしま
  いばらき
  とちぎ
  ぐんま
  さいたま
  ちば
  とうきょう
  かながわ
  にいがた
  とやま
  いしかわ
  ふくい
  やまなし
  ながの
  ぎふ
  しずおか
  あいち
  みえ
  しが
  きょうと
  おおさか
  ひょうご
  なら
  わかやま
  とっとり
  しまね
  おかやま
  ひろしま
  やまぐち
  とくしま
  かがわ
  えひめ
  こうち
  ふくおか
  さが
  ながさき
  くまもと
  おおいた
  みやざき
  かごしま
  おきなわ
)

romajis = %w(
  hokkaido
  aomori
  iwate
  miyagi
  akita
  yamagata
  fukushima
  ibaraki
  tochigi
  gunma
  saitama
  chiba
  tokyo
  kanagawa
  niigata
  toyama
  ishikawa
  fukui
  yamanashi
  nagano
  gifu
  shizuoka
  aichi
  mie
  shiga
  kyoto
  osaka
  hyogo
  nara
  wakayama
  tottori
  shimane
  okayama
  hiroshima
  yamaguchi
  tokushima
  kagawa
  ehime
  kochi
  fukuoka
  saga
  nagasaki
  kumamoto
  oita
  miyazaki
  kagoshima
  okinawa
)

codes = [*1..47]

prefectures = codes.zip(names, kanas, romajis)

prefectures.each do |p|
  Prefecture.create!(code: p[0], name: p[1], kana: p[2], romaji: p[3])
end
