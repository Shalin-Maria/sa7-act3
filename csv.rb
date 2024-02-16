require 'csv'
def csv_to_hashes(file)
    data = []
    CSV.foreach(file, headers: true) do |row|
            data << row.to_hash
    end
    data
  end
  hashed_data = csv_to_hashes("data.csv")
  hashed_data.each do |row|
    puts "Name: #{row['Name']}, Age: #{row['Age']}, City: #{row['City']}"
  end