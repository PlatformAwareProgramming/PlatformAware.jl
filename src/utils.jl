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
 