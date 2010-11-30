class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :title
      t.string :paper_url
      t.string :authors
      t.date :year
      t.string :citation
      t.string :task
      t.text :task_desc
      t.text :interface_desc
      t.integer :env_dim
      t.integer :env_scale
      t.integer :env_density
      t.integer :env_realism
      t.text :env_desc
      t.integer :part_num
      t.integer :part_gender
      t.integer :part_age
      t.text :part_backround
      t.text :part_other
      t.integer :exp_type
      t.string :systems
      t.string :systems_tech
      t.text :systems_desc
      t.string :comps
      t.text :comps_desc
      t.text :variables_desc
      t.text :constants
      t.text :findings
      t.integer :specificity
      t.text :issues
      t.text :summary
      t.integer :viewed
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
