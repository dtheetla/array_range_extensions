module ArrayRangeExtensions
 refine Array do
   def overlap_ranges
     dup=[]
     self.each_with_index do |src,i|
       self.each_with_index do |dest,j|
         if i!=j && (src[:start]..src[:end]).overlaps?(dest[:start]..dest[:end])
            dup<<src
         end
       end#self 2
     end#self 1
     return dup
   end
 end
end

