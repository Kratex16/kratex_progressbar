local isProgressBarOpened = false

RegisterNUICallback('finish', function()
    if (isProgressBarOpened) then
        isProgressBarOpened = false
    end
end)

function pokreniPorgressBar(text, timeouts)
    if (isProgressBarOpened) then
        return
    end

    isProgressBarOpened = true

    SendNUIMessage({
        type = 'pokreniProgressBarKontrole',
        text = text,
        timeouts = timeouts,
    })
end

exports('pokreniPorgressBar', pokreniPorgressBar)

RegisterNetEvent('kratex_progressbar:client:pokreniPorgressBar', pokreniPorgressBar)

RegisterCommand('progtest', function()
    pokreniPorgressBar('Kratex Development', 6000)
end)