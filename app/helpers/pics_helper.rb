module PicsHelper
	def tag_cloud(tags, classes)
<<<<<<< HEAD
  max = tags.sort_by(&:count).last
  tags.each do |tag|
    index = tag.count.to_f / max.count * (classes.size - 1)
    yield(tag, classes[index.round])
  end
end
=======
	  max = tags.sort_by(&:count).last
	  tags.each do |tag|
	    index = tag.count.to_f / max.count * (classes.size - 1)
	    yield(tag, classes[index.round])
	  end
	end
>>>>>>> 2a7907e4534f75a031a124aaa23e209984bdd525
end
