# Nice little one liners 

## Get a count of references  in a code base and output that to a file

    # One liner
    for f in $(cat ~/Desktop/vendor-calls ); do NUMBER=`ack-grep -l --ignore-file=ext:xsd --ignore-file=ext:wsdl --ignore-file=ext:datasource --ignore-file=ext:xml --ignore-file=ext:csproj $f | wc -l| tr -d '[:space:]'`; echo "$f : ${NUMBER}" >> ~/vendorCallsUsage; done

    # Spaced out for clarity
    for f in $(cat ~/Desktop/vendor-calls ) 
    do 
      NUMBER=`ack-grep -l --ignore-file=ext:xsd --ignore-file=ext:wsdl --ignore-file=ext:datasource --ignore-file=ext:xml --ignore-file=ext:csproj $f | wc -l| tr -d '[:space:]'` 
      echo "$f : ${NUMBER}" >> ~/vendorCallsUsage; 
    done


