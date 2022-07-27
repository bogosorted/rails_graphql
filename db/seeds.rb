10.times do
    user = User.create(
      email: "#{Faker::BossaNova.song.delete(" ").downcase}@aragonmail.com",
      first_name: Faker::JapaneseMedia::OnePiece.character,
      last_name: Faker::Name.last_name
    )
    Card.create(
      user: user,
      name: Faker::Games::DnD.monster,
      life: Random.rand(100),
      power: Random.rand(100),
      effectType: Faker::Science.element_state
    )
end
  