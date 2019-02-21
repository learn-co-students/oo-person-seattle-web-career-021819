class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  MIN = 0
  MAX = 10

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  # Setter for happiness that clamps value between 0 and 10
  def happiness=(happiness)
    @happiness = happiness.clamp(MIN, MAX)
  end

   # Setter for hygiene that clamps value between 0 and 10
  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(MIN, MAX)
  end

  # Returns true if happiness > 7
  def happy?
    @happiness > 7
  end

  # Returns true if hygiene > 7
  def clean?
    @hygiene > 7
  end

  # Adds given number to back_account
  # Returns a cheesy line flexing said bank_account
  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  # Adds 4 to hygiene
  # Returns a questionable song
  def take_bath
    self.hygiene=(@hygiene+4) # Call the setter since it already clamps the value
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  # Subtracts 3 from hygiene and adds 2 to happiness
  # Returns a more agreeable song
  def work_out
    self.hygiene=(@hygiene-3)
    self.happiness=(@happiness+2)
    "♪ another one bites the dust ♫"
  end

  # Adds 3 t0 happiness of given Person instance and this instance
  # Returns a friendly convo that includes name of given Person and self
  def call_friend(person)
    self.happiness=(@happiness+3) 
    person.happiness += 3
    
    "Hi #{person.name}! It's #{@name}. How are you?"
  end

  # Takes given Person instance and given string topic
  # And changes happiness of given Person and this depending on given topic
  # And engages Person and self in a highly intellectual discourse
  def start_conversation(person, topic)
    if topic == "politics"
      happiness_delta = -2
      self.happiness=(@happiness+happiness_delta) 
      person.happiness += happiness_delta
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      happiness_delta = 1
      self.happiness=(@happiness+happiness_delta) 
      person.happiness += happiness_delta
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end