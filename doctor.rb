require 'sqlite3'
DB = SQLite3::Database.new("wagon_doctors.sqlite")

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id] || attributes['id']
    @name = attributes[:name] || attributes['name']
    @age = attributes[:age] || attributes['age']
    @specialty = attributes[:specialty] || attributes['specialty']
  end

  def self.all
    DB.results_as_hash = true
    query = "SELECT * FROM doctors"
    results = DB.execute(query)
    results.map do |result|
      Doctor.new(result)
    end
  end

  def save
    # We want to put Tom in the DB
    query = "INSERT INTO doctors (name, age) VALUES (?, ?)"
    # give the query to the DB
    DB.execute(query, @name, @age)
    puts 'Saved!'
    @id = DB.last_insert_row_id
    p self
  end

  def destroy
    # remove the record from the db
  end
end

tom = Doctor.new(name: 'Tom', age: 42)
tom.save
tom.destroy
# p Doctor.all
