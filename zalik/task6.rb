require 'date'

class Artist
  def initialize(name, age)
    @name = name
    @age = age
  end
  attr_accessor :name, :age
end

class Location

  def initialize(name, addr, seats_count)
    @name = name
    @addr = addr
    @seats_count = seats_count
  end

  attr_accessor :seats_count, :name, :addr
end

class Concert
  def initialize(date, genre, location, ticket_price, artist)
    @date = date
    @genre = genre
    @location = location
    @ticket_price = ticket_price
    @artist = artist
    @hall = [0]*@location.seats_count
  end
  attr_accessor :date, :genre, :location, :ticket_price, :artists, :hall, :artist

  def book(site)
    if site > @location.seats_count or @hall[site] == 1
      puts "You cant book! Seat is engaged or wrong number. Count of seats = " + @location.seats_count.to_s
    else
      @hall[site] = 1
    end
  end
end

class ConcertManager
  def initialize(concerts)
    @concerts = concerts
  end

  def sort_by_genre
    @concerts.sort_by {|concert| concert.genre}
  end

  def sort_by_date
    @concerts.sort_by {|concert| concert.date}
  end

  def sort_by_price
    @concerts.sort_by {|concert| concert.ticket_price}
  end

  def sort_by_location
    @concerts.sort_by {|concert| concert.location}
  end

  def get_by_genre(genre)
    res = []
    @concerts.each {|concert| concert.genre == genre ? res.push(concert) : ''}
    res
  end

  def get_by_date(date)
    res = []
    @concerts.each {|concert| concert.date == date ? res.push(concert) : ''}
    res
  end

  def get_by_price(price)
    res = []
    @concerts.each {|concert| concert.ticket_price == price ? res.push(concert) : ''}
    res
  end

  def get_by_artist(artist)
    res = []
    @concerts.each {|concert| concert.artist.name == artist.name ? res.push(concert) : ''}
    res
  end

  def get_by_location(location)
    res = []
    @concerts.each {|concert| concert.location.name == location.name ? res.push(concert) : ''}
    res
  end
end

aAndrew = Artist.new("Andrew",9)
aSanya = Artist.new("Sanya", 67)
aMaria = Artist.new("Maria", 25)

lVdng = Location.new("VDNG", "Exhibition Center", 200)
lPalaceS = Location.new("Palace of Sports", "Sports square, 1", 300)
lPalaceU = Location.new("Palace Ukraine", "Velyka Vasylkivska street, 103", 400)

concerts = [7]
concerts[0] = Concert.new(Date.new(2021,12,20), "rock", lVdng, 500, aAndrew)
concerts[1] = Concert.new(Date.new(2022,2,5), "pop", lPalaceS, 300, aSanya)
concerts[2] = Concert.new(Date.new(2022,3,20), "rock", lPalaceS, 500, aAndrew)
concerts[3] = Concert.new(Date.new(2022,2,5), "classic", lPalaceU, 400, aMaria)
concerts[4] = Concert.new(Date.new(2022,12,20), "classic", lPalaceU, 400, aMaria)
concerts[5] = Concert.new(Date.new(2022,7,5), "pop", lVdng, 300, aSanya)
concerts[6] = Concert.new(Date.new(2022,3,21), "rock", lPalaceU, 500, aAndrew)

cm = ConcertManager.new(concerts)

puts cm.get_by_artist(aAndrew)