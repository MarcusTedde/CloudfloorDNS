@{
    ModuleVersion = '1.0'
    RootModule = 'CloudfloorDNS.psm1'
    Author = 'Marcus Tedde'
    Description = 'A module to interact with the Cloudfloor DNS API.'
    FunctionsToExport = @(
        'Get-CloudfloorDNSRecords',
        'Get-CloudfloorDNSZone',
        'Get-CloudfloorDNSZoneRecord',
        'Get-CloudfloorDNSZone2',
        'Get-CloudfloorDNSZone2Record'
    )
}