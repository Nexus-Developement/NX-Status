window.addEventListener('message', function(event) {
    let data = event.data;

    if (data.type === "updateStatus") {
        document.getElementById('health-wave').style.height = data.health + "%";
        document.getElementById('armor-wave').style.height = data.armor + "%";
        document.getElementById('hunger-wave').style.height = data.hunger + "%";
        document.getElementById('thirst-wave').style.height = data.thirst + "%";
    }
});