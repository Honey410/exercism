class Raindrops

    def Raindrops.convert(number)
      sound = ""
      if number % 3 == 0
        sound = sound+"Pling"
      end
      if number % 5 == 0
        sound = sound+"Plang"
      end
      if number % 7 == 0
        sound = sound+"Plong"
      end
      if sound.length > 0
        return sound
      end
      return "#{number}"
    end
end
