require 'pry'



class Author
    attr_accessor :name, :posts
    def initialize(name)
        @name = name
    end
    
    def posts
        #binding.pry
        Post.all.select {|post| post.author == self}
    end 
    
    def add_post(post)
        Post.all << post
        post.author = self 
    end

    
    def add_post_by_title(title)
        post = post.new(title)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        Post.all.uniq.count
    end

end 