
wine_cellar = [
  {:label => "Rutherford Hill", :type => "Chardonnay", :color => "white"},
  {:label => "Nina Veneto", :type => "Pinot Grigio", :color => "white"},
  {:label => "Wairau River", :type => "Sauvignon Blanc", :color => "white"},
  {:label => "Tangley Oaks", :type => "Merlot", :color => "red"},
  {:label => "Chimney Rock", :type => "Cabernet Sauvignon", :color => "red"},
  {:label => "Sanford", :type => "Pinot Noir", :color => "red"},
  {:label => "Alderbrook", :type => "Pinot Noir", :color => "red"},
  {:label => "Colavita", :type => "Pinot Noir", :color => "red"},
  {:label => "Markham", :type => "Chardonnay", :color => "white"},
  {:label => "Angeline", :type => "Pinot Noir", :color => "red"}
]


# Create a file called `wine.rb`. Write code that does the following. Use comments to label which part of your code is for which number.

#   1. Adds a wine of your choice to the cellar

wine_cellar.push({:label => "Cheap Wine", :type => "Not Good", :color => 'red'})
wine_cellar

#   2. Returns a random wine from the cellar
wine_cellar.shuffle[0]

#   3. Returns an array of just the white wines
wine_cellar.select { |wine| wine.has_value?('white') }

#   4. Returns an array listing the unique types of wine
wine_cellar.map { |wine| wine[:type]}.uniq


#   5. Returns an array with the all the wines that have 2-word labels
wine_cellar.select { |wine| wine[:label].include?(' ') }

#   6. Returns an array with the labels of the wines that a type of Pinot Noir
wine_cellar.select { |wine| wine[:type] == 'Pinot Noir'}
