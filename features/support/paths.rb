module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /^the root page$/
      root_path
    when /^the signin page$/
      signin_path
    end
  end
end

World(NavigationHelpers)
