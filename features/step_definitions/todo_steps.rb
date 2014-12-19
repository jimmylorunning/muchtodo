
Given /the following todos exist/ do |todos_table|
  todos_table.hashes.each do |todo|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Todo.create(task: todo["task"], priority: todo["priority"], status: todo["status"])
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  (page.body =~ Regexp.new(e1)).should < (page.body =~ Regexp.new(e2))
end