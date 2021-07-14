require './lib/joke'
require './lib/user'

RSpec.describe "User" do
  it "exists" do
    user_1 = User.new("Sal")

    expect(user_1).to be_a(User)
  end

  it "has a name" do
    user_1 = User.new("Sal")

    expect(user_1.name).to eq("Sal")
  end

  it "has a joke array" do
    user_1 = User.new("Sal")

    expect(user_1.jokes).to eq([])
  end

  it "add jokes" do
    user_1 = User.new("Sal")
    joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
    user_1.learn(joke_1)
    user_1.learn(joke_2)

    expect(user_1.jokes).to eq([joke_1, joke_2])
  end

  it "can tell another user jokes, other user will learn jokes " do
    user_1 = User.new("Sal")
    user_2 = User.new("Ali")
    joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
    user_1.learn(joke_1)
    user_1.learn(joke_2)
    user_1.tell(user_2, joke_1)
    user_1.tell(user_2, joke_2)

    expect(user_2.jokes).to eq([joke_1, joke_2])

  end



end
