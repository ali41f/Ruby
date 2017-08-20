grades = { alice: 100,
           bob: 92,
           chris: 95,
           dave: 97
}

print grades.select {|name, grade| grade < 97}, "\n"
# ==> {:bob=>92, :chris=>95}

print grades.select { |k, v| k == :alice }, "\n"
# ==> {:alice=>100}


movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}
# Add your code below!

print good_movies = movie_ratings.select  { |name, score| score > 3 }, "\n"

movie_ratings.each_key { |k| puts k, " " } # print out just the titles of our movies using puts.