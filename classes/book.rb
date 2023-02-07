class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def to_s
    "Title: \"#{@title}\", Author: #{@author}"
  end

  def to_json(*_args)
    {
      'author' => @author,
      'title' => @title,
      'rentals' => @rentals,
      'class' => self.class.name
    }
  end
end
