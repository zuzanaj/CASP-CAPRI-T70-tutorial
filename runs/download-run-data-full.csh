#!/bin/csh
#
set found=`which wget |grep -v found |wc -l`
  if ($found == 0) then
    set found=`which curl |grep -v found |wc -l`
    if ($found == 0) then
      echo 'No curl nor wget found in your system'
      echo 'Unable to download expample data'
      goto exit
    else
      set cmd=`which curl`
      $cmd -L https://surfdrive.surf.nl/files/index.php/s/Z3WbAyPbmPYdsnj/download > T70-dimer-full.tgz
      $cmd -L https://surfdrive.surf.nl/files/index.php/s/eqRroFUHUYkXJGB/download > T70-tetramer-full.tgz
    endif
  else
    set cmd=`which wget`
    $cmd https://surfdrive.surf.nl/files/index.php/s/Z3WbAyPbmPYdsnj/download -O T70-dimer-full.tgz
    $cmd https://surfdrive.surf.nl/files/index.php/s/eqRroFUHUYkXJGB/download -O T70-tetramer-full.tgz
  endif
endif

exit:
