class UpdateIndexOnUsers < ActiveRecord::Migration[6.0]
  def change
    sql = 'DROP INDEX index_users_on_email'
    ActiveRecord::Base.connection.execute(sql)
  end
end
