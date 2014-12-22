# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create the default task list, to be shown on welcome#index 
TaskList.create(title: 'Default Tasklist', user_id: 1)

# create a generic task so that the default task list has some content 
Task.create([
			{title: 'to do no. 1', complete: 'False', user_id: 1, tasklist_id: 1}
			])

#create a bunch of generic users 
User.create([
                        {name: 'Langdon'},
                        {name: 'Raphael'},
                        {name: 'Marco'},
                        {name: 'Eduardo'},
                        {name: 'Samantha'},
                        {name: 'Phillip'},
                        {name: 'Sean'},
                        {name: 'Larry'},
                        {name: 'Reginald'},
                        {name: 'Stuart'},
                        {name: 'Nick`'},
                        {name: 'Wendell'},
                        {name: 'Franklin'},
                        {name: 'Daniel'},
                        {name: 'Taylor'},
                        {name: 'Mohammed'},
                        {name: 'Arthur'},
                        {name: 'Zebulon'},
                        {name: 'Benjamin'},
                        {name: 'Tucker'},
                        {name: 'Spencer'},
                        {name: 'Hunter'},
                        {name: 'Roger'},
                        {name: 'Alan'},
                        {name: 'Noah'},
                        {name: 'Chris'},
                        {name: 'Annie'},
                        {name: 'Stephanie'},
                        {name: 'Charlotte'},
                        {name: 'Foxy'}])

# create a bunch of random move types
MoveType.create([
			{title: 'Move'},
			{title: 'Replace'},
			{title: 'Upgrade'},
			{title: 'Repair'},
			{title: 'Recover'},
			{title: 'Lend'},
			{title: 'Fix'},
			{title: 'Update'},
			{title: 'Hide'},
			{title: 'Remove'},
			{title: 'Disconnect'},
			{title: 'Reconnect'},
			{title: 'Mail Out'},
			{title: 'Disposal'},
			{title: 'Request'}
])

#create a generic asset type as an example
AssetType.create([
			{
			title: 'PC',
			group: 'Computers'
			}
])

#create a generic move as an example
Move.create([
			{
			description: 'Brought this thing to there',
			user_id: 1,
			move_type_id: 1,
			asset_id: 1
			}	
])

#create a generic asset as an example
Asset.create([
			{
			title: 'E30',
			asset_type_id: 1,
			user_id: 1,
			asset_tag: 0001	
			},			
			{
			title: 'E31',
			asset_type_id: 1,
			user_id: 1,
			asset_tag: 0002	
			},
			{
			title: 'T430 i5',
			asset_type_id: 1,
			user_id: 1,
			asset_tag: 0003	
			},
			{
			title: 'T430 i7',
			asset_type_id: 1,
			user_id: 1,
			asset_tag: 0004	
			},			
			{
			title: 'W540 32GB',
			asset_type_id: 1,
			user_id: 1,
			asset_tag: 0005	
			},
			{
			title: 'x230',
			asset_type_id: 1,
			user_id: 1,
			asset_tag: 0006	
			},

])
