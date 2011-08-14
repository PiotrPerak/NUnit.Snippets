param($installPath, $toolsPath, $package, $project)

$snippetFolder = "NUnit"
$source = "$toolsPath\Snippets\*"
# add 2005, 2008 below if You want. I haven't tested these snippets with those verions of VS 
$vsVersions = @("2010")
Foreach ($vsVersion in $vsVersions)
{
	$myCodeSnippetsFolder = "$HOME\Documents\Visual Studio $vsVersion\Code Snippets\Visual C#\My Code Snippets\"
	if (Test-Path $myCodeSnippetsFolder)
	{
		$destination = "$myCodeSnippetsFolder$snippetFolder"
		if (!(Test-Path $destination))
		{
		  New-Item $destination -itemType "directory"
		}

		write-host ========================================================================================================================================================================
		write-host Copying snippets to $destination
		write-host 

		Copy-Item $source -Destination $destination -Recurse -Force

		write-host Snippets are available for every project in every solution!
		write-host Look at $destination\NUnit_snippets_summary.txt to find out what snippets are available
		write-host
		write-host To uninstall snippets just remove $destination directory
		write-host ========================================================================================================================================================================
	}
}
uninstall-package NUnit.Snippets -ProjectName $project.Name
