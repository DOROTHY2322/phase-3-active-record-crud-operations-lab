class Movie < ActiveRecord::Base
    attribute :lead, :string
    def self.create_with_title(title)
        movie = self.new(title: title)
        movie.save
        movie
      end
       # Return the first item in the movies table
  def self.first_movie
    self.first
  end

  # Return the last item in the movies table
  def self.last_movie
    self.last
  end

  # Return the number of items in the movies table
  def self.movie_count
    self.count
  end

  # Return the movie with the corresponding id
  def self.find_movie_with_id(id)
    self.find_by(id: id)
  end

  # Return the movie with the corresponding attributes
  def self.find_movie_with_attributes(attributes)
    self.find_by(attributes)
  end

  # Return a list of movies released after 2002
  def self.find_movies_after_2002
    where("release_date > 2002").to_a
  end
  
  def update_with_attributes(attributes)
    update(attributes)
  end

  def self.update_all_titles(new_title)
    update_all(title: new_title)
  end
  def self.delete_by_id(id)
    find(id).destroy
  end

  def self.delete_all_movies
    delete_all
  end
  
end