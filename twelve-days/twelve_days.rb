class TwelveDays
    DAYS = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
    GIFTS = ["and a Partridge in a Pear Tree", "two Turtle Doves", "three French Hens", "four Calling Birds", "five Gold Rings", "six Geese-a-Laying", "seven Swans-a-Swimming", "eight Maids-a-Milking", "nine Ladies Dancing", "ten Lords-a-Leaping", "eleven Pipers Piping", "twelve Drummers Drumming"]

    def self.song
        total_song = ""
        DAYS.each_with_index do |day, index|
            if index == 0
                total_song << "On the #{day} day of Christmas my true love gave to me: a Partridge in a Pear Tree.\n"
            else
                total_song << "\nOn the #{day} day of Christmas my true love gave to me: #{GIFTS[0..index].reverse.join(", ")}.\n"
            end
        end
        total_song
    end
end