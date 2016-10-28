User.delete_all
Article.delete_all

bob = User.create(username:"bob", first_name:"Bob", last_name:"McGee",
                  email:"bob@example.com")
                  
alice = User.create(username:"alice", first_name:"Alice", last_name:"McGee",
                    email:"alice@example.com")

article = Article.new(title:"Growing up as Bob McGee's Sister", user:alice)
article.content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo vel augue in tempus. Proin pretium semper aliquam. Pellentesque venenatis lectus sit amet efficitur ultricies. Pellentesque placerat tortor vel dui rutrum fermentum. Nullam consequat vestibulum facilisis. Ut eget dui non tortor dapibus pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget lacinia urna."
article.save

article = Article.new(title:"On Developing Rails Applications", user:alice)
article.content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo vel augue in tempus. Proin pretium semper aliquam. Pellentesque venenatis lectus sit amet efficitur ultricies. Pellentesque placerat tortor vel dui rutrum fermentum. Nullam consequat vestibulum facilisis. Ut eget dui non tortor dapibus pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget lacinia urna."
article.save

article = Article.new(title:"My Tragic Life as a Person Actually Named Bob McGee", user:bob)
article.content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo vel augue in tempus. Proin pretium semper aliquam. Pellentesque venenatis lectus sit amet efficitur ultricies. Pellentesque placerat tortor vel dui rutrum fermentum. Nullam consequat vestibulum facilisis. Ut eget dui non tortor dapibus pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget lacinia urna."
article.save
