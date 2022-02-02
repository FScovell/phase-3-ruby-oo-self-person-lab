# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene

    @@individual =[]
    def initialize(name, happiness = 8, hygiene=8, bank_account=25)
        @name =name
        @happiness = happiness
        @hygiene = hygiene
        @bank_account = bank_account
        @@individual << self
    end

    def happiness
        if @happiness > 10
            @happiness =10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end
    end
    def hygiene
        if @hygiene > 10
            @hygiene =10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end
    end
    def happy?
        if @happiness > 7
            return true
        else
           return false
        end
    end
    def clean?
        if @hygiene > 7
            return true
        else
           return false
        end
    end
    def get_paid(number)
        @bank_account=@bank_account+number
        "all about the benjamins"
    end
    def take_bath
        self.hygiene+=4
        hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene-=3
        self.happiness+=2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness+=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(name, topic)
        if topic=='politics'
            self.happiness-=2
            name.happiness-=2
            "blah blah partisan blah lobbyist"
        elsif topic=='weather'
            self.happiness+=1
            name.happiness+=1
            "blah blah sun blah rain"
       else
            "blah blah blah blah blah"
       end
    end
end