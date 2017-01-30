write-host "Starting ..." 
$toIgnore = ".git","README.md"
$scriptDirectory = $PSScriptRoot
cd ../..
$submoduleDirectory = "py_proj_submodule\"
$destinationDirectory = "./"
$files = get-childitem  -path $submoduleDirectory
write-host "Current directory =" $directory

foreach ($file in $files)
{
   if ($file.Name -in $toIgnore){
        write-host "Found " $file.Name "Ignoring..."
   } 
   else{
    Copy-Item -path $file.FullName -dest $destinationDirectory -recurse -Force
   }
}