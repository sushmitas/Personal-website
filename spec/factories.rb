# By using the symbol ':project', we get Factory Girl to simulate the Project model.
Factory.define :project do |project|
  project.name                  "Example project"
  project.short_description     "Short description"
  project.desc_col1							"Column 1 description."
  project.desc_col2							"Column 2 description."
  project.desc_col3							"Column 3 description."
  project.thumb_img_filename		"ThumbImgName.png"
  project.index_img_filename		"IndexImgName.png"
end


# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Example"
  user.email                 "example@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end
