class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end 

    def add_post(post)
        post.author = self
    end 

    def self.all
        @@all
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end
    
    def add_post_by_title(name)
        post = Post.new(name)
        post.author = self
    end 

    def self.post_count
        Post.all.count
    end 
end 