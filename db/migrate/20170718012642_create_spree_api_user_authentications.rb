migration_superclass = if ActiveRecord::VERSION::MAJOR >= 5
  ActiveRecord::Migration["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"]
else
  ActiveRecord::Migration
end

class CreateSpreeApiUserAuthentications < migration_superclass
  def change
    create_table :spree_api_user_authentications do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.timestamps null: false
    end
  end
end
