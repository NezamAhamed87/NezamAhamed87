$ArrayOfFiles = '','','';


$fileDirectory = "T:\08102021\";
$destinationDirectory = "C:\Nezam\08102021\";

foreach($documentName in Get-ChildItem $fileDirectory)
{
    $documentPath = $fileDirectory + $documentName;

    if($ArrayOfFiles -contains $documentName)
    {
        Write-Output $documentName;
        Copy-Item -Path $documentPath -destination $destinationDirectory
    }
}