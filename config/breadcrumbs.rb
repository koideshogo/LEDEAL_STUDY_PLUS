# frozen_string_literal: true

crumb :root do
  link 'トップページ', root_path
end

crumb :manufacturers do
  link 'メーカー', manufacturers_path
end

crumb :manufacturer_detail do |category|
  link category.name.to_s, manufacturer_show_path
  parent :manufacturers
end

crumb :post do
  link '動画投稿', new_post_path
end

crumb :user do
  link 'マイページ', mypage_path(current_user.id)
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
