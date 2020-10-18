
5.times do |i|
  if i.even?
    user = User.create(name: "user#{i}", email: "user#{i}@example.com", admin: true, password: 'test', password_confirmation: 'test')
    Task.create(name: "#{user.name}さんの朝", description: "管理人#{user.name}が起床する", user_id: user.id)
    Task.create(name: "#{user.name}さんの昼", description: "管理人#{user.name}は外出する", user_id: user.id)
    Task.create(name: "#{user.name}さんの夜", description: "管理人#{user.name}は家で休む", user_id: user.id)
  else
    user = User.create(name: "user#{i}", email: "user#{i}@example.com", admin: false, password: 'test', password_confirmation: 'test')
    Task.create(name: "#{user.name}さんの朝", description: "#{user.name}が起床する", user_id: user.id)
    Task.create(name: "#{user.name}さんの昼", description: "#{user.name}は外出する", user_id: user.id)
    Task.create(name: "#{user.name}さんの夜", description: "#{user.name}は家で休む", user_id: user.id)
  end
end

