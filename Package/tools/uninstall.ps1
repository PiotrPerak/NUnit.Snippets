# Uninstall script for NUnit code snippets
#param($installPath, $toolsPath, $package, $project)

#$snippetFolder = "NUnit"
#$source = "$toolsPath\*.snippet"
#$vsVersions = @("2010")
  
#Foreach ($vsVersion in $vsVersions)
#{
#	$myCodeSnippetsFolder = "$HOME\Documents\Visual Studio $vsVersion\Code Snippets\Visual C#\My Code Snippets\"
# 	if (Test-Path $myCodeSnippetsFolder)
# 	{
# 		$destination = "$myCodeSnippetsFolder$snippetFolder"
# 		if (Test-Path $destination)
# 		{
# 			"Uninstalling code snippets for Visual Studio $vsVersion"
# 			Remove-Item $destination -recurse -force
# 		}
# 	}
# }
