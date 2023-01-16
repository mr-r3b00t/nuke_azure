$azres = Get-AzResource


ForEach($res in $azres)
{

if($res.ResourceGroupName -notlike 'shell'){
$res.ResourceGroupName
write-host "Found resource $res.$res.ResourceGroupName for deletion" -foregroundcolor red
write-host "Found resource $res.ResourceId for deletion" -foregroundcolor red

#Remove-AzResource -ResourceId $res.ResourceId -Force -Confirm:$False
}

}

$azresgrp = Get-AzResourceGroup
ForEach($resgrp in $azresgrp)
{

if($resgrp.ResourceGroupName -notlike 'shell'){
$resgrp.ResourceGroupName
write-host "Found resource $resgrp.$res.ResourceGroupName for deletion" -foregroundcolor red
write-host "Found resource $resgrpId for deletion" -foregroundcolor red

Remove-AzResourceGroup -ResourceId $resgrp.ResourceId -Force -Confirm:$False
}

}
