class Argser
  attr_reader :params, :options
  
  def initialize(args)
    accept = true
    
    ex = []
    
    px = 
      args.inject({}) do |a,b|
        if b[0] == "-"
          if !(cp = b.index("=")).nil?
            a[b[1...cp].strip.to_sym] = b[(cp + 1)..-1].strip
          else
            accept = false
            break
          end
        elsif b.index("=").nil?
          ex << b
        else
          accept = false
          break
        end
        
        a
      end
    
    @params   = accept ? ex : []
    @options  = accept ? px : {}
  end
  def empty?
    @params.empty? && @options.empty?
  end
  def self.parse(args)
    self.new(args)
  end
end
