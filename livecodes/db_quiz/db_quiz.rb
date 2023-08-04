# What’s the SQL query to get books written before 1985?

SELECT * FROM books
WHERE publishing_year < 1985

# What’s the SQL query to get the 3 most recent books written by Jules Verne?
SELECT * FROM books
JOIN authors ON books.author_id = authors.id
WHERE authors.name = 'Jules Verne'
ORDER BY books.publishing_year DESC
LIMIT 3

class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps # created_at ++ updated_at
    end
  end
end

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publishing_year

      t.references :author, foreign_key: true

      # CREATE_INDEX

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.timestamps
    end
  end
end

class CreateUserBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :user_books do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end

class AddCategoryToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :category, :string, null: false
  end
end


class Author
  has_many :books
end

class Book
  belongs_to :author
  has_many :user_books
  has_many :users, thorugh: :user_books
end

class User
  has_many :user_books
  has_many :books, through: :user_books
end


class UserBook
  belongs_to :user
  belongs_to :book
end


#1. Add your favorite author to the DB
author = Author.new(name: 'Milan Kundera')
author.save
# author = Author.create(name: 'Milan Kundera')

#2. Get all authors
Author.all

#3. Get author with id=8
Author.find(8)

#4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: 'Jules Verne')

#5. Get Jules Verne's books
jules.books

#6. Create a new book "20000 Leagues under the Seas". Store it in a variable: twenty_thousand
twenty_thousand = Book.new(title: '20000 Leagues under the Seas', publishing_year: 1870)

#7. Add Jules Verne as this book's author
twenty_thousand.author = jules

#8. Now save this book in the DB!
twenty_thousand.save! #=> true || raise an Error


class Author
  validates :name, presence: true
end

# If the validation fails, the record will not be saved in the database.

# The #save method will return false
# The #create method will return the instance but will silence the errors validations
# To understand why your record cannot be saved in the database and see the validation errors you can use:

# The #save! method will raise ActiveRecord::RecordInvalid: Validation failed: Name can't be blank
# The #create! method will raise ActiveRecord::RecordInvalid: Validation failed: Name can't be blank
