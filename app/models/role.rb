class Role < ActiveRecord::Base
    
    has_many :auditions

    def actors
        if self.auditions != []
            self.auditions.map { |audition| audition.actor }
        else
            "no actors recorded"
        end
    end

    def locations
        if self.auditions != []
            all_auditions = self.auditions.map { |audition| audition.location }
            all_auditions
        else
            "no locations recorded"
        end
    end

    def lead
        if self.auditions.find_by(hired: true)
            self.auditions.find_by(hired: true).actor
        else
            'no actor has been hired for this role'
        end
    end

    def understudy
        if self.auditions.find_by(hired: true) && self.auditions.find_by(hired: true).second
            self.auditions.find_by(hired: true).second.actor
        else
            'no actor has been hired for understudy for this role'
        end
    end
end