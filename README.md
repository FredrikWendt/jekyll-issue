* Run `./build.sh` to build the Docker image used to "contain" Jekyll
* Run `./update.sh` to run Jekyll (within a Docker instance) and produce the `_site` directory

This should result in

    Configuration file: /jekyll/_config.yml
                Source: /jekyll
           Destination: /jekyll/_site
          Generating... 
            Pagination: Pagination is enabled, but I couldn't find an index.html page to use as the pagination template. Skipping pagination.
    
      Populating LSI... 
    Rebuilding index... jekyll 2.5.2 | Error:  undefined method `reduce' for #<GSL::Vector:0x0000000154cc10>

