class AddDefaulttoTasks < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:tasks, :completed, false)
  end
end

#https://api.rubyonrails.org/v7.0.4.2/classes/ActiveRecord/ConnectionAdapters/SchemaStatements.html#method-i-change_column_default
