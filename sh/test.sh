#!/bin/bash
#
# { # try
#
#     command1 &&
#     #save your output
#
# } || { # catch
#     # save log for exception
# }
{ echo "Hola";} || { echo "Adios";}
