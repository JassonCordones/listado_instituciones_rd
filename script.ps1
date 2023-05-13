Invoke-WebRequest -Uri 'https://www.sismap.gob.do/Central/Home/About' |
    Select-Object -ExpandProperty Content  |
    Select-String -Pattern '(?<=<li>)[^<]+(?<!<\/li>)(?=<\/li>)' -AllMatches |
    Select-Object -ExpandProperty Matches |
    Select-Object -ExpandProperty Value |
    ForEach-Object {
        $_ -replace '&#225;', 'á' `
           -replace '&#233;', 'é' `
           -replace '&#237;', 'í' `
           -replace '&#243;', 'ó' `
           -replace '&#250;', 'ú' `
           -replace '&#241;', 'ñ' `
           -replace '&#218;', 'Ú' `
           -replace '&#211;', 'Ó' `
           -replace '&#205;', 'Í' `
           -replace '&#201;', 'É' `
           -replace '&#193;', 'Á' `
           -replace '&quot;', '“'
    } |
    Out-File -FilePath 'instituciones.txt'