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
      $cmd -L https://surfdrive.surf.nl/files/index.php/s/44nlD8kZUEIVdO3/download > T70-dimer.tgz
      $cmd -L https://surfdrive.surf.nl/files/index.php/s/jEZRXR7PFt6sJDM/download > T70-tetramer.tgz
    endif
  else
    set cmd=`which wget`
    $cmd https://surfdrive.surf.nl/files/index.php/s/44nlD8kZUEIVdO3/download -O T70-dimer.tgz
    $cmd https://surfdrive.surf.nl/files/index.php/s/jEZRXR7PFt6sJDM/download -O T70-tetramer.tgz
  endif
endif

exit:
