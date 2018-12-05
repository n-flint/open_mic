class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
  end

  def joke_by_id(id)
    @jokes.find do |joke|
     if joke.id == id
     @joke_sorted_by_id = joke
      else
      end
    end
   return @joke_sorted_by_id
 end
end
