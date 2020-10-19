FactoryBot.define do
  factory :task do
    name { 'テストを書く' }
    description { 'テストテストテストテストテストテストテストテストテスト' }
    user
  end
end