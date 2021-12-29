class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :level
      t.string :description
    end
  end
end


# response = RestClient.get "https://www.dnd5eapi.co/api/spells/acid-arrow"
# # => <RestClient::Response 200 "{\"index\":\"a...">

# spell_hash = JSON.parse(response)
# # => {"index"=>"acid-arrow",
# #  "name"=>"Acid Arrow",
# #  "desc"=>
# #   ["A shimmering green arrow streaks toward a target within range and bursts in a spray of acid. Make a ranged spell attack against the target. On a hit, the target takes 4d4 acid damage immediately and 2d4 acid damage at the end of its next turn. On a miss, the arrow splashes the target with acid for half as much of the initial damage and no damage at the end of its next turn."], ...

# spell_hash["name"]
# # => "Acid Arrow"

# spell_hash.keys
# # spell_hash
# # => ["index",
# #  "name",
# #  "desc",
# #  "higher_level",
# #  "range",
# #  "components",
# #  "material", ..