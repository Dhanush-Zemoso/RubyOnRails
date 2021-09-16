#Task 1
myCity = {
  "hyderabad" => 500047,
  "chennai"=> 400047,
  "delhi"=> 100047,
  "mumbai"=> 200047,
  "bangalore"=> 300047,
  "ernakulam"=> 600041,
  "vijaywada"=> 700047,
  "diu"=> 800047,
  "kolkata"=> 900047,
  "agra"=> 101047
}

#Task 2
def allCityNames(myCity)
  myCity.each {|k, v| puts "The City is #{k} and the pincode is #{v}"}
end

#Task 3
def getCityName()
  puts "Enter the name of the city you want to know the pincode"
  return gets.chomp.downcase
end

#Task 4
def getAreaCode(cityName, myCity)
  if myCity.has_key?(cityName)
    puts "The pincode for the city #{cityName} is #{myCity[cityName]}"
  else
    puts "There is no city named #{cityName} in our Database"
  end
end

#Task 5
count = 1
allCityNames(myCity)
loop do
  cityName = getCityName()
  getAreaCode(cityName, myCity)
  puts "Do you want to continue?(Y/N)"
  choice = gets.chomp.downcase
  break if choice != "y"
end
