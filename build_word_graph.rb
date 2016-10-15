def buildGraph(wordFile)
  d = {}
  g = Graph.new
  file = File.open(wordFile)
  file.each do |line|
    word = line[0...-1]
    (0..word.length-1).each do |i|
      bucket = word[0...i] + '_' + word[i+1..word.length-1]
      if d.keys.includes? bucket
        d[bucket].push(word)
      else
        d[bucket] = [word]
      end
    end
    d.keys.each do |bucket|
      d[bucket].each do |word1|
        d[bucket].each do |word2|
          g.add_edge(word1,word2) if word1 != word2
        end
      end
    end
  end
  return g
end
