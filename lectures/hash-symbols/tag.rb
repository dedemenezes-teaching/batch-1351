def tag(html_tag, content, attributes = {})
#   p html_tag
#   p content
  # p attributes #=> "class='bold'"
  # 1. got over the attributes hash
  attributes_array = []
  attributes.each do |key, value|
    # 2. for each pair build the string
    attributes_array << "#{key}='#{value}'"
  end
  # p attributes_array
  # 3. store somewhere
  # 4. add to the opening HTMl tag
  "<#{html_tag} #{attributes_array.join(' ')}>#{content}</#{html_tag}>"
end

p tag("h1", "Hello world")
# => <p>Hello batch</p>

p tag('h1',  'Hello world', { class: 'bold' })
# => <h1 class='bold'>Hello world</h1>

p tag("a", "Le Wagon", href: "http://lewagon.org", class: "btn", id: 'batch')
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>''
