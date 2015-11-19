require 'minitest/autorun'
require 'active_record'
require 'active_support'
require_relative '../lib/ttafu_attribute'

ActiveRecord::Base.establish_connection(
  adapter:  "sqlite3",
  database: "test/db/test.sqlite3"
)

unless ActiveRecord::Base.connection.table_exists?(:users)
  ActiveRecord::Base.connection.create_table :users do |t|
    t.string :name
    t.string :email
    t.timestamps null: false
  end
end

class User < ActiveRecord::Base
  include TtafuAttribute
  ttafu_attribute :name
end
