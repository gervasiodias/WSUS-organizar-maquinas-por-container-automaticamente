$System = (Get-WmiObject win32_operatingSystem).name
$registrypath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"
$Name = "TargetGroupEnabled"
$value = "1"
$Name2 = "TargetGroup"
$value2 = "PRO"
$value3 = "LTSB"
$value4 = "7 PRO"
$value5 = "7 Ultimate"
$value6 = "XP"
$value7 = "Windows 8.1"
$value8 = "2003 - R2"
$value9 = "2008 - R2"
$value10 = "2012 - R2"
$value11 = "2016 - R2"

if (!(Test-Path $registrypath))
{
    New-Item -Path $registrypath -Force | Out-Null
    New-ItemProperty -Path $registrypath -Name $Name -Value $value `
        -PropertyType DWORD -Force | Out-Null
        }
ELSE
{
    New-ItemProperty -Path $registrypath -Name $Name -Value $value `
        -PropertyType DWORD -Force | Out-Null
}

if ($System -like "Microsoft Windows 10 Pro|C:\*")
{
    New-ItemProperty -Path $registrypath -Name $Name2 -Value $value2 `
        -PropertyType String -Force | Out-Null
}

    elseif ($System -like "Microsoft Windows 10 Enterprise 2015 LTSB|C:\*")

{
    New-ItemProperty -Path $registrypath -Name $Name2 -Value $value3 `
        -PropertyType String -Force | Out-Null
}

    elseif ($System -like "Microsoft Windows 7 Professional |C:\*")
{
    New-ItemProperty -Path $registrypath -Name $Name2 -Value $value4 `
        -PropertyType String -Force | Out-Null
}
    
    elseif ($System -like "Microsoft Windows 7 Ultimate |C:\*")  
{
    New-ItemProperty -Path $registrypath -Name $Name2 -Value $value5 `
        -PropertyType String -Force | Out-Null
} 
    
    elseif ($System -like "Microsoft Windows 8.1 Pro |C:\*")

{
    New-ItemProperty -Path $registrypath -Name $Name2 -Value $value7 `
        -PropertyType String -Force | Out-Null
} 
    elseif ($System -like "Microsoft Windows Server 2008 R2*")

{
    New-ItemProperty -Path $registrypath -Name $Name2 -vale $value9 `
        -PropertyType String -Force | Out-Null
}
    elseif ($System -like "Microsoft Windows Server 2012 R2*")

{
    New-ItemProperty -Path $registrypath -Name $Name2 -Value $value10 `
        -PropertyType String -Force | Out-Null
}
    elseif ($System -like "Microsoft Windows Server 2016*")

{
    New-ItemProperty -Path $registrypath -Name $Name2 -Value $value11 `
        -PropertyType String -Force | Out-Null
}
    