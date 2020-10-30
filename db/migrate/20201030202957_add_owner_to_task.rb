class AddOwnerToTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :owner, null: false, foreign_key: { to_table: :users }, index: true
  end
end

# class AddOwnerToTask < ActiveRecord::Migration[6.0]
#   def change
#     # fase 1
#     add_reference :tasks, :owner, null: true, foreign_key: { to_table: :users }, index: true

#     # fase 2
#     # código de refactorización
#     Task.find_each { |t| t.update! owner_id: User.first.id } # ejemplo
#     # fin de código de refactorización

#     # fase 3
#     change_column_null :tasks, :owner_id, false
#   end
# end