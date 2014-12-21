# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

default_tasklist = TaskList.create(title: 'Default Tasklist', user_id: 1)

tasks = Task.create([
			{title: 'to do no. 1', complete: 'False', user_id: 1, tasklist_id: 1}
			])
users = User.create([
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
