 $table = Get-ChildItem -Path "pathto\domain.com\user" -Recurse -Directory -Include .* -Force -ErrorAction SilentlyContinue | Select-Object FullName, Name
foreach ($row in $table)
{
  
python -m maildir2mbox $($row.FullName) "C:\testt\$($row.Name.substring(1)).mbox"

}