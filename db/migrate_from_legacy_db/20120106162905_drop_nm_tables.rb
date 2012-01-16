class DropNmTables < ActiveRecord::Migration
  def up
    drop_table :nm_anno
    drop_table :nm_argomenti
    drop_table :nm_insegnamenti
    drop_table :nm_interessi
    drop_table :nm_lauree
    drop_table :nm_log
    drop_table :nm_moduli
    drop_table :nm_risultati
    drop_table :nm_utenti
  end
end
