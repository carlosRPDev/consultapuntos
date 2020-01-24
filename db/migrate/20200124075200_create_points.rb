class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.string :name
      t.string :ccosto
      t.string :tecnologia
      t.text :observacion
      t.string :ipradio
      t.string :iptele
      t.string :ipcom

      t.timestamps
    end
  end
end
