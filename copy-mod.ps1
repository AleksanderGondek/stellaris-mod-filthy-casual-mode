#
# This simple, ugly scripts purpose is to backup latest version of mod placed in Stellaris mods directory,
# remove it and than overwrite with new version.
# This simplifies iterative testing when mod code repository is not pleaced directly in Stellaris mod directory.
#

$CurrentUserDocumentsDirectory = [Environment]::GetFolderPath("MyDocuments")

$StellarisGameModsDirectory = [io.path]::combine($CurrentUserDocumentsDirectory,"Paradox Interactive\Stellaris\mod")
$ModRepositoryDirectory = [io.path]::combine($CurrentUserDocumentsDirectory,"stellaris-mod-filthy-casual-mode")

$BackupDirectoryName = "filthy_casual_mode_backup_" + $(get-date -f MM-dd-yyyy_HH_mm_ss)
$BackupFullPath = [io.path]::combine($StellarisGameModsDirectory, $BackupDirectoryName)

$ModContentsDirectoryName = "filthy_casual_mode"
$ModMetaFileName = "filthy_casual_mode.mod"

$StellarisModMetaFileNameFullPath = [io.path]::combine($StellarisGameModsDirectory,$ModMetaFileName)
$StellarisModContentsDirectoryPath = [io.path]::combine($StellarisGameModsDirectory,$ModContentsDirectoryName)

if ((Test-Path $StellarisModMetaFileNameFullPath) -And (Test-Path $StellarisModContentsDirectoryPath))
{
    mkdir $BackupFullPath

    Copy-Item $StellarisModMetaFileNameFullPath $([io.path]::combine($BackupFullPath,$ModMetaFileName))
    Copy-Item -Recurse $StellarisModContentsDirectoryPath $BackupFullPath

    Remove-Item -Force $StellarisModMetaFileNameFullPath
    Remove-Item -Recurse -Force $StellarisModContentsDirectoryPath
}

Copy-Item -Force $([io.path]::combine($ModRepositoryDirectory,$ModMetaFileName)) $StellarisModMetaFileNameFullPath
Copy-Item -Force -Recurse $([io.path]::combine($ModRepositoryDirectory,$ModContentsDirectoryName)) $StellarisGameModsDirectory
