function Get-CloudfloorDNSZone2 {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$Username,

        [Parameter(Mandatory = $true)]
        [string]$ApiKey
    )

    # Define the API endpoint
    $uri = "https://apiv2.mtgsy.net/api/v1/dns/zone2"

    # Create the headers
    $headers = @{
        "Content-Type" = "application/json"
    }

    # Create the body of the request
    $body = @{
        username = $Username
        apikey   = $ApiKey
    } | ConvertTo-Json

    try {
        # Send the request
        $response = Invoke-RestMethod -Uri $uri -Method Get -Headers $headers -Body $body

        # Return the response
        return $response
    }
    catch {
        Write-Error "An error occurred: $_"
    }
}