require('telescope').setup{
  defaults = {
   file_ignore_patterns = {
       "node_modules", 
       "FreeRTOS/", 
       "FreeRTOSv202107.00/", 
       "build",
       "env"
   } 
 }
}
