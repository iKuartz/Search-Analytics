# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: 'Ivan', email: 'ivan@mail.com', password: '1234')
user2 = User.create(name: 'Joey', email: 'joey@mail.com', password: '4321')
user3 = User.create(name: 'Author', email: 'author@mail.com', password: '3241')
theme1 = Theme.create(theme: 'aerodynamics', relevance: 1)
theme2 = Theme.create(theme: 'hydrodynamics', relevance: 1)
theme3 = Theme.create(theme: 'Tectonic plaques', relevance: 1)
theme4 = Theme.create(theme: 'Fire safety', relevance: 4)
article1 = Article.create(title: 'Why do birds fly so high?', user_id: user1.id, theme_id: theme1.id, relevance: 1,
                          text: 'According to an article from Stanford, birds fly only below 500 feet unless they are migrating. Migratory birds generally fly at around 10,000 feet. Long-distance migratory birds will start out at lower heights of about 5,000 feet, then move on to higher heights of about 20,000 feet. However, there are exceptional birds that can fly much higher than that! The question still remains: why? This is because migration is an energetically demanding process so birds need to conserve as much as possible. Here’s how they deal with this: they fly at higher altitudes where the air is much thinner with allows for them to cruise for longer distances with less air resistance. Another possible benefit of flying high is to avoid suffering from dehydration due to the higher temperatures of the air near ground level. Examples of migratory birds that can fly high include the Rüppell’s vulture which can fly up to 37,100 feet and the famous Bar-headed goose which fly even over the Himalayas on their migratory path. For birds like Bar-headed Geese, the reason for flying so high would probably be because they need to fly over the tall mountains in the Himalayas.')
article2 = Article.create(title: 'Why do the high pressures of the deep sea do not make water hotter than the surface?',
                          user_id: user3.id, theme_id: theme2.id, relevance: 2, text: "Pressure and temperature only affect one another when changing (and that is only true at constant volume for an ideal gas, which here is not the case). If you were to suddenly put pressure on the bottom of the ocean, it would heat up. The difference is that the pressure is fairly constant, and therefore whatever heat was given to the ocean from its pressure, has reached equilibrium a long long time ago. Temperature is only affected by a change in pressure. The ocean's pressure is constant and does not change much, so therefore the temperature is constant and does not change much. After that fact, the reason the bottom of the ocean is so cold is because of heat currents, which is to say that hot water flows to the top and cold water flows to the bottom.")
article3 = Article.create(title: 'Preventing a fire is easier than fighting it.', user_id: user3.id,
                          theme_id: theme4.id, relevance: 28, text: 'The most common offender for fire-related incidents in the workplace is the kitchen or cooking area of your workplace. It holds most of the appliances in your office and is also where employees’ attention is most likely to stray. Unplug all appliances after use. Yes, everything. It’s the only way to be sure no electric current can travel or cause unwanted sparks. Make it the habit of all your employees to unplug items before leaving the cooking area. Keep any appliance that generates heat away from items or materials which could overheat or catch fire. This could include toasters, ovens, electric kettles, and space heaters. Store a fire extinguisher somewhere accessible in the kitchen area and make sure all employees know how to use it.')
theme_weight1 = ThemeWeight.create(user_id: user1.id, theme_id: theme1.id, weight: 5)
theme_weight2 = ThemeWeight.create(user_id: user1.id, theme_id: theme2.id, weight: 2)
theme_weight3 = ThemeWeight.create(user_id: user1.id, theme_id: theme3.id, weight: 4)
theme_weight4 = ThemeWeight.create(user_id: user1.id, theme_id: theme4.id, weight: 14)
theme_weight5 = ThemeWeight.create(user_id: user2.id, theme_id: theme1.id, weight: 4)
theme_weight6 = ThemeWeight.create(user_id: user2.id, theme_id: theme3.id, weight: 18)
theme_weight7 = ThemeWeight.create(user_id: user2.id, theme_id: theme4.id, weight: 1)
article_weight1 = ArticleWeight.create(user_id: user1.id, article_id: article1.id, weight: 4)
article_weight2 = ArticleWeight.create(user_id: user1.id, article_id: article2.id, weight: 40)
article_weight3 = ArticleWeight.create(user_id: user1.id, article_id: article3.id, weight: 5)
article_weight4 = ArticleWeight.create(user_id: user2.id, article_id: article1.id, weight: 5)
