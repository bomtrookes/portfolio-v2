puts "Clearing database..."
Project.destroy_all
Blog.destroy_all

puts "Creating projects..."
Project.create!(
  name: "List-It",
  caption: "An Instagram/Reddit hybrid to share lists of your favourite interests",
  content:
   "List-it is a project that I made during my time on the Full Stack Web Development Bootcamp with Le Wagon in London. This was the main app that I worked on in a group of three. This was a fantastic learning experience.",
  url: "www.list-it.lol",
  github: "www.github.com/bomtrookes",
  blog: "www.tombrookes.dev/blog/4",
  skills: ["Ruby on Rails", "   SCSS", "   Stimulus", "   JavaScript"],
  color_theme: "#80c8a9"
)

puts "Creating blogs..."
Blog.create!(
  title: "Using My Own Blog Style Class",
  content:
   "<h2>Code Block Test</h2>\r\n<pre><code class=\"ruby\">\r\ndef hello\r\n  puts \"Hello, world!\"\r\nend\r\n</code></pre>\r\n\r\n<h2>Here we go...</h2>\r\n<p>So, lets start with a regular 'p' and type some copy... with no break</p>\r\n<p>Here is an image with the following</p>\r\n<h3>Small</h3>\r\n<img class=\"blog-img-sm\" src=\"https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png\">\r\n<hr>\r\n<h3>Medium</h3>\r\n<img class=\"blog-img\" src=\"https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png\">\r\n<hr>\r\n<h3>Large</h3>\r\n<img class=\"blog-img-lg\" src=\"https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png\">\r\n<hr>\r\n<h3>CodePen Test</h3>\r\n<p class=\"codepen\" style=\"height:300px;display:flex;align-items:center;justify-content:center;border:2px solid;margin:1em 0;padding:1em;\">\r\n  <span>See the Pen <a>\r\n  Infinite Scroll-Snap Gallery</a> by Tom Brookes (<a>@bomtrookes</a>)\r\n  on <a>CodePen</a>.</span>\r\n</p>\r\n"
)
puts "Done!"
