param($installPath, $toolsPath, $package, $project)

$snippetFolder = "NUnit"
$source = "$toolsPath\Snippets\*"
$vsVersion = [System.Version]::Parse($dte.Version)
$versionDir = "20" + ($vsVersion.Major + 1).ToString()
$documentsDir = [environment]::getfolderpath("mydocuments")
$myCodeSnippetsFolder = "$documentsDir\Visual Studio $versionDir\Code Snippets\Visual C#\My Code Snippets\"


write-host ========================================================================================================================================================================

if (!(Test-Path $myCodeSnippetsFolder))
{
	write-host Creating snippets folder $myCodeSnippetsFolder
	write-host 

	New-Item $myCodeSnippetsFolder -itemType "directory"
}

$destination = "$myCodeSnippetsFolder$snippetFolder"
if (!(Test-Path $destination))
{
	New-Item $destination -itemType "directory"
}

write-host Copying snippets to $destination
write-host 

Copy-Item $source -Destination $destination -Recurse -Force

write-host Snippets are available for every project in every solution!
write-host Look at $destination\NUnit_snippets_summary.txt to find out what snippets are available
write-host or at http://writesoft.wordpress.com/2011/08/14/nunit-snippets/.
write-host
write-host If you have any problems with package it is hosted on https://github.com/PiotrPerak/NUnit.Snippets so you can create issues or even better send me a pull request.
write-host
write-host To uninstall snippets just remove $destination directory
write-host ========================================================================================================================================================================


uninstall-package NUnit.Snippets -ProjectName $project.Name