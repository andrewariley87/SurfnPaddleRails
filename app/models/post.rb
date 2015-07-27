class Post
  attr_accessor :id, :title, :body, :summary, :author, :created_at

  def initialize(hash)
    @id         = hash[:id]
    @title      = hash[:title]
    @body       = hash[:body]
    @summary    = hash[:summary]
    @author     = hash[:author]
    @created_at = hash[:created_at] || Time.now
  end

  def self.all
    unless defined?(@@posts)
      @@posts = [
          Post.new(
            :id         => 1,
            :title      => "Vogel",
            :body       => "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.
                          Proin ut quam eros. Donec sed lobortis diam. Nulla nec odio lacus. Quisque porttitor egestas dolor in placerat. Nunc vehicula dapibus ipsum. Duis venenatis risus non nunc fermentum dapibus. Morbi lorem ante, malesuada in mollis nec, auctor nec massa. Aenean tempus dui eget felis blandit at fringilla urna ultrices. Suspendisse feugiat, ante et viverra lacinia, lectus sem lobortis dui, ultricies consectetur leo mauris at tortor. Nunc et tortor sit amet orci consequat semper. Nulla non fringilla diam.",
            :summary    => "Some Ipsum",
            :author     => "Jim Rome",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 2,
            :title      => "George",
            :body       => "Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor, erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.
                            Proin ornare ligula eu tellus tempus elementum. Aenean bibendum iaculis mi, nec blandit lacus interdum vitae. Vestibulum non nibh risus, a scelerisque purus. Ut vel arcu ac tortor adipiscing hendrerit vel sed massa. Fusce sem libero, lacinia vulputate interdum non, porttitor non quam. Aliquam sed felis ligula. Duis non nulla magna.",
            :summary    => "Some More Ipsum",
            :author     => "Tony Kornheiser",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 3,
            :title      => "Ellis",
            :body       => "Integer elementum massa at nulla placerat varius. Suspendisse in libero risus, in interdum massa. Vestibulum ac leo vitae metus faucibus gravida ac in neque. Nullam est eros, suscipit sed dictum quis, accumsan a ligula. In sit amet justo lectus. Etiam feugiat dolor ac elit suscipit in elementum orci fringilla. Aliquam in felis eros. Praesent hendrerit lectus sit amet turpis tempus hendrerit. Donec laoreet volutpat molestie. Praesent tempus dictum nibh ac ullamcorper. Sed eu consequat nisi. Quisque ligula metus, tristique eget euismod at, ullamcorper et nibh. Duis ultricies quam egestas nibh mollis in ultrices turpis pharetra. Vivamus et volutpat mi. Donec nec est eget dolor laoreet iaculis a sit amet diam.
                            Proin ornare ligula eu tellus tempus elementum. Aenean bibendum iaculis mi, nec blandit lacus interdum vitae. Vestibulum non nibh risus, a scelerisque purus. Ut vel arcu ac tortor adipiscing hendrerit vel sed massa. Fusce sem libero, lacinia vulputate interdum non, porttitor non quam. Aliquam sed felis ligula. Duis non nulla magna. ",
            :summary    => "Crazy Ipsum",
            :author     => "Mike Wilbon",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 4,
            :title      => "Hill",
            :body       => "Maecenas eu placerat ante. Fusce ut neque justo, et aliquet enim. In hac habitasse platea dictumst. Nullam commodo neque erat, vitae facilisis erat. Cras at mauris ut tortor vestibulum fringilla vel sed metus. Donec interdum purus a justo feugiat rutrum. Sed ac neque ut neque dictum accumsan. Cras lacinia rutrum risus, id viverra metus dictum sit amet. Fusce venenatis, urna eget cursus placerat, dui nisl fringilla purus, nec tincidunt sapien justo ut nisl. Curabitur lobortis semper neque et varius. Etiam eget lectus risus, a varius orci. Nam placerat mauris at dolor imperdiet at aliquet lectus ultricies. Duis tincidunt mi at quam condimentum lobortis.
                            Proin suscipit luctus orci placerat fringilla. Donec hendrerit laoreet risus eget adipiscing. Suspendisse in urna ligula, a volutpat mauris. Sed enim mi, bibendum eu pulvinar vel, sodales vitae dui. Pellentesque sed sapien lorem, at lacinia urna. In hac habitasse platea dictumst. Vivamus vel justo in leo laoreet ullamcorper non vitae lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum ullamcorper rutrum.",
            :summary    => "What More Ipsum",
            :author     => "Spike Lee",
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 5,
            :title      => "Stuckey",
            :body       => "Nullam eros mi, mollis in sollicitudin non, tincidunt sed enim. Sed et felis metus, rhoncus ornare nibh. Ut at magna leo. Suspendisse egestas est ac dolor imperdiet pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor, erat sit amet venenatis luctus, augue libero ultrices quam, ut congue nisi risus eu purus. Cras semper consectetur elementum. Nulla vel aliquet libero. Vestibulum eget felis nec purus commodo convallis. Aliquam erat volutpat.
                            Etiam aliquam sem ac velit feugiat elementum. Nunc eu elit velit, nec vestibulum nibh. Curabitur ultrices, diam non ullamcorper blandit, nunc lacus ornare nisi, egestas rutrum magna est id nunc. Pellentesque imperdiet malesuada quam, et rhoncus eros auctor eu. Nullam vehicula metus ac lacus rutrum nec fermentum urna congue. Vestibulum et risus at mi ultricies sagittis quis nec ligula. Suspendisse dignissim dignissim luctus. Duis ac dictum nibh. Etiam id massa magna. Morbi molestie posuere posuere.",
            :summary    => "Even More Ipsum",
            :author     => "Reggie Miller",
            :created_at => (1..10).to_a.sample.months.ago
          )
      ]
    end
    @@posts
  end

  def self.find(id)
    all.select{|post| post.id == id}.first
  end

end
