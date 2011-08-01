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

		Copy-Item $source -Destination $destination -Recurse 
	}
}
