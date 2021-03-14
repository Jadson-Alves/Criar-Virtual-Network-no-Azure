# Variaveis
$RG = "RG-homolog-vnet"
$Vnetname = "Vnet-001"
$Subnetname = "subnet-001"
$location = "EastUS"
$Prefixvnet = "10.0.0.0/16"
$Prefixsubnet = "10.0.0.0/24" 

# Criar Resource Group
New-AzResourceGroup -Name $RG -Location $location 

# Criar subnet 
$subnet = New-AzVirtualNetworkSubnetConfig -Name $Subnetname -AddressPrefix $Prefixsubnet

# Criar virtual Network
New-AzVirtualNetwork -ResourceGroupName $RG `-Location $location `-Name $Vnetname `-AddressPrefix $Prefixvnet `-Subnet $subnet

# Exibir todas as virtual network criadas por nome
Get-AzVirtualNetwork |select Name



