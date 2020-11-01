def badge_maker(name)
    return "Hello, my name is #{name}."
end

speakers_lineup = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def batch_badge_creator(speakers_lineup)
    speakers_lineup.collect{|speaker| badge_maker(speaker)}
end    

def assign_rooms(speakers_lineup)
    speakers_lineup.each_with_index.map{|speaker,index| "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"}
end    

def printer(attendees)
    batch_badge_creator(attendees).each_with_index do |badge|
        puts badge
    end
        assign_rooms(attendees).each_with_index do |assignment|
            puts assignment
        end
    end
                    