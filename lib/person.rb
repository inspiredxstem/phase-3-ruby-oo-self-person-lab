# your code goes here
class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if (happiness > 10)
            @happiness = 10
        elsif (happiness < 0)
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if(hygiene > 10)
            @hygiene = 10
        elsif(hygiene < 0)
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?
        return self.happiness > 7
    end

    def clean?
        return self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(newPerson)
        self.happiness += 3
        newPerson.happiness += 3
        return "Hi #{newPerson.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(newPerson, topic)
        case topic
        when "politics"
            [self, newPerson].each do |person|
                person.happiness -= 2
            end
            return "blah blah partisan blah lobbyist"
        when "weather"
            [self, newPerson].each do |person|
                person.happiness += 1
            end
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end