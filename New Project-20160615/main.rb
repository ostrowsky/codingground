class LineAnalyzer
	attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number
	@content = ''
	@highest_wf_count = 0
	@highest_wf_words = []
	
	
	def initialize(line)
	    @content = line.downcase
		self.calculate_word_frequency
	end
	
	def calculate_word_frequency()
	    @hash = Hash.new
	    @highest_wf_count = 0
	    @highest_wf_words = []
	    arr = @content.split
	    arr.each do |word|
	        if @hash.has_key?(word) 
	            @hash[word] += 1
	            if @hash[word] > @highest_wf_count
	                @highest_wf_count = @hash[word]
	                @highest_wf_words.push(word)
	            end
	        else @hash[word] = 1
	          
	        end
	   
	    end
	 puts @hash   
	end
end

c = LineAnalyzer.new('Will it work maybe it will work do you think it will it will')

puts c.highest_wf_count
p c.highest_wf_words


class LineAnalyzer
	attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number
	@content = ''
	@highest_wf_count = 0
	@highest_wf_words = []
	
	
	def initialize(line)
	    @content = line.downcase
		self.calculate_word_frequency
	end
	
	def calculate_word_frequency()
	    @hash = Hash.new
	    @highest_wf_count = 0
	    @highest_wf_words = []
	    arr = @content.split
	    arr.each do |word|
	        if @hash.has_key?(word) 
	            @hash[word] += 1
	        else @hash[word] = 1
	        end
	    end
	 @hash.each do |word|
	     if @hash[word] >= @highest_wf_count
	                @highest_wf_count = @hash[word]
	                @highest_wf_words.push(word)
	            end
	end
end

c = LineAnalyzer.new('Will it work maybe it will work do you think it will it will')

