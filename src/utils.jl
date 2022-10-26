# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

function try_download(url,fname)
    try
       if (isfile(fname))
          cp(fname,fname * ".backup", force=true)
       end
       Downloads.download(url, fname)
    catch e
       @info "error downloading $url."
       if (isfile(fname) || isfile(fname * ".backup"))
          @info " Using existing file $fname"
          if (!isfile(fname))
             cp(fname * ".backup", fname)
          end
       else
          @info " Check internet connection and try again."
          rethrow(e)
       end
    end
 end

 function readDB(filename)

   d = Vector()
   i=0
   for ls in readlines(filename)
      if i>0
         l = split(ls,',')
         ks = split(l[1],';')
         d2 = d
         for k in ks
            next_d = nothing
            for (key,value) in d
               if (k == key)
                  next_d = value      
               end
            end
            if (isnothing(next_d))
               next_d = Vector()
               push!(d,(k,next_d))
            end
            d = next_d
         end
         push!(d,(l[2],tuple(l[2:length(l)]...)))
         d = d2
      end
      i = i + 1
   end
 
   return d
 end

 function lookupDB(db, key)

   d = db

   while typeof(d) <: Vector

      ks = d

      found = false
      for (k,v) in ks 
         if (occursin(k,key))
            d = v; found = true
            break
         end
      end
      if !found return nothing end
   end

   return d

end
 

function readDB2(filename)

   d = Dict()
   i=0
   for ls in readlines(filename)
      l = split(ls,',')
      if i==0
         global columns = Vector()
         for c in l 
            push!(columns, c)
         end
      elseif i>0

         dd = Dict()
         i = 1
         for c in columns 
            dd[c] = l[i]
            i = i + 1
         end
         d[l[1]] = dd
      end
      i = i + 1
   end
 
   return d
 end