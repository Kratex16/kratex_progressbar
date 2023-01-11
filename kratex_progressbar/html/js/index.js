const PROGRESSBAR_ACTIONS_EVENTS = {
    ['pokreniProgressBarKontrole']: {
        init: (data) => {
            startProgressBarTimeout(data.text, data.timeouts)
        }
    }
}

window.addEventListener('message', (event) => {
    if (PROGRESSBAR_ACTIONS_EVENTS[event.data.type] != null) {
        PROGRESSBAR_ACTIONS_EVENTS[event.data.type].init(event.data)
    }
})