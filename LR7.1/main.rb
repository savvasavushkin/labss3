# frozen_string_literal: true

def randomfile(len)
    characters = ('a'..'z').to_a + ('0'..'9').to_a
    (1...len).map { characters[rand(characters.length - 1)] }.join('')
    end
    
    def foo(fff, ggg, bool = true)
    rand(3..13).times { |_| fff.write randomfile(rand(18)).concat("\n") } if bool
    fff.seek(File::SEEK_SET)
    fff.each { |symbol| ggg.write symbol.scan(/a(.*)/).join + "\n" }
    end