#!/bin/bash
#
# Unix bash shell script to apply post-processing patches to the generated source
# code. This should be run only after source code has been newly generated by the
# XMPP utility. This should be done automatically on Unix-derived operating systems
# via the ant task. You're on your own for windows.
#
# Since this is run from the project directory (one level above this), all the
# file names used should be relative to that directory.
#
# Uses the Unix patch utility.
#
# Arguments: $0 = shell script name (this file)
# $1 = product: dis, dismobile, etc. 
#
# To generate a patch file, check out the current source code from svn, then
# modify it. Run the command
# svn diff SomeFile.java > SomeFile.java.patch
# to create the patch file
#
# @author DMcG
# @version $Id:$

echo Arguments: $0, $1, $2

case "$1" in
  dis)
      # Pdu.java, apply patch file
      patch src/main/edu/nps/moves/dis/Pdu.java patches/dis/Pdu.patch

      # Marking.java, apply patch file to ensure character fields are exactly 11 bytes long after set operations
      patch src/main/edu/nps/moves/dis/Marking.java patches/dis/Marking.patch

      # Apply patch to VariableDatum.java
      patch src/main/edu/nps/moves/dis/VariableDatum.java patches/dis/VariableDatum.patch

      # Apply patch to EntityID to get equality, hashcode
      patch src/main/edu/nps/moves/dis/EntityID.java patches/dis/EntityID.patch

      # Apply patch to Vector3Double to get some convienience methods for 
      # converting back and forth to DIS coordinates from lat/lon/alt.
      patch src/main/edu/nps/moves/dis/Vector3Double.java patches/dis/Vector3Double.patch
      ;;

    csharp)
      echo applying patches for csharp dis 1998
      ;;

    csharpDis7)
      echo applying patches for csharp and DIS 7
      ;;

   *)
     echo product not found. You should set the "product" ant property in the build.xml file and add a case statement entry to applyPatches.sh
     exit
     ;;
 esac     
