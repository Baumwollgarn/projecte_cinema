function openMobileMenu() {
    if (document.getElementById("menu-mobile-content").classList.contains("closed")) {
        document.getElementById("menu-mobile-content").style.display = "block";
        document.getElementById("menu-mobile-content").classList.add("open");
        document.getElementById("menu-mobile-content").classList.remove("closed");
        document.getElementById("menu-mobile-content").classList.add("animated");

    } else if (document.getElementById("menu-mobile-content").classList.contains("open")) {
        document.getElementById("menu-mobile-content").classList.remove("open");
        document.getElementById("menu-mobile-content").classList.add("closed");
        document.getElementById("menu-mobile-content").style.display = "none";

    }
}

function closeMobileMenu() {
    if (document.getElementById("menu-mobile-content").style.display === "block" && window.innerWidth > 950) {
        document.getElementById("menu-mobile-content").style.display = "none";
        document.getElementById("menu-mobile-content").classList.remove("open");
        document.getElementById("menu-mobile-content").classList.add("closed");
    }
}

window.addEventListener("resize", closeMobileMenu)

function showShowTimesCinema(id) {

    let schedule = document.querySelector(`#schedule-${id}`);
    let dark = document.querySelector('.dark');

    schedule.style.display = "flex";
    dark.style.display = "flex";
}

function closeAll() {
    let schedule = document.querySelectorAll(`.st-unique`)
    let dark = document.querySelector('.dark')
    let trailerCard = document.querySelectorAll('.trailerCard');

    schedule.forEach(schedule => {
        schedule.style.display = "none";
    });
    dark.style.display = "none";
    trailerCard.forEach(card => {
        card.style.display = "none";
    });
}