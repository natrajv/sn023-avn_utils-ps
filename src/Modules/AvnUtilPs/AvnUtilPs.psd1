@{
    # Required - Module version
    ModuleVersion = '1.0.0'

    # Script module (the .psm1 file)
    RootModule = 'AvnUtilPs.psm1'

    # Author/Description
    Author = 'Natarajan'
    Description = 'PowerShell general Utility module'

    # Functions to export (optional, can also be in Export-ModuleMember)
    FunctionsToExport = @('Get-Step')

    # No Cmdlets, Aliases exported
    CmdletsToExport = @()
    AliasesToExport = @()

    # Optional GUID (unique identifier)
    GUID = '6ff79d55-6b8a-43c7-ac81-04da8bb66ca4'
}