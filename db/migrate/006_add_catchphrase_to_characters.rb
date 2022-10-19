class AddCatchphraseToCharacters < ActiveRecord::Migration[6.1]
  def change
    def change
      add_column :characters, :catchphrase, :string
    end
  end
end
