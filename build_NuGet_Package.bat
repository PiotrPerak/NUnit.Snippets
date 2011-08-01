del "Package\tools\Snippets" /Q
xcopy "Snippets" "Package\tools\Snippets" /Y /S
"NuGet\nuget.exe" pack "Package\NUnit.Snippets.nuspec"
