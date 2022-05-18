// Function to hide "showTimes"
function hideShowTimes(id) {
    document.getElementById("showTimes").style.display = "none";
    document.getElementById("dark").style.display = "none";
    document.getElementById("schedule-" + {id}).style.display = "none";
}

function showShowTimes(id) {
    document.getElementById("showTimes").style.display = "flex";
    document.getElementById("dark").style.display = "flex";
}



function createMovieCard(movieData) {
    let movieCard = document.createElement('div')
    movieCard.className = "card"
    movieCard.id = movieData.id
    movieCard.innerHTML = `
    <img src="${movieData.image}" alt="${movieData.title}" class="card-image">
            <h3 class="card-title">${movieData.generic}</h3>`
    document.querySelector('.movieCards').appendChild(movieCard)
}


fetch('http://localhost:8081/daw/select * from movie')
    .then(function (response) {
        return response.json();
    })
    .then(movieData => {
        for (let i = 0; i < movieData.data.length; i++) {
            createMovieCard(movieData.data[i]);
        }
    })

fetch('http://localhost:8081/daw/select * from cinema')
    .then(response => response.json())
    .then(data => {
        for (let i = 0; i < data.data.length; i++) {
            createCard(data.data[i]);
        }
    })

let cardContent = document.createElement('div');
cardContent.className = 'cinemas';

function createCard(data) {
    let card = document.createElement('div');
    card.className = 'cinema-card';
    card.id = data.idCinema
    card.addEventListener('click', function (e) {
        showShowTimesCinema(data.idCinema)
    })
    card.innerHTML = `
    <img src="${data.image}" alt="cine_1" class="cinema-image">
                <h3 class="cinema-title">${data.name}</h3>
                <p class="cinema-address">${data.address}</p>
                <p class="cinema-phone">${data.phoneNumber}</p>
        <div class="showtimes st-unique" id="schedule-${data.idCinema}">
            <h3 class="showtimes-title">Bienvenidos al ${data.name}</h3>
            <div class="cinema-selector-max">
                <form action="" class="cinema-selector_form">
                    <label for="movie-selector"></label>
                    <select name="movie-selector" id="movie-selector" class="movie-selector">
                        <option value="0" selected>Selecciona una pelicula</option>
                    </select>
                </form>
            </div>

        <div class="showtimes-content">
            <div class="showtimes-item">
                <div class="showtimes-item-content">
                    <h4 class="showtimes-item-title">Sessio 1</h4>
                    <p class="showtimes-item-time">10:00 - 12:00</p>
                </div>
            </div>
            <div class="showtimes-item">
                <div class="showtimes-item-content">
                    <h4 class="showtimes-item-title">Sessio 2</h4>
                    <p class="showtimes-item-time">12:00 - 14:00</p>
                </div>
            </div>
            <div class="showtimes-item">
                <div class="showtimes-item-content">
                    <h4 class="showtimes-item-title">Sessio 3</h4>
                    <p class="showtimes-item-time">14:00 - 16:00</p>
                </div>
            </div>
        </div>
        <i class="fa-solid fa-times close" onclick="hideShowTimesCinema(${data.idCinema})"> Tancar</i>
    </div>
               `
    cardContent.appendChild(card);
    document.querySelector('.cinemas').appendChild(cardContent);
}


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
    if (document.getElementById("menu-mobile-content").style.display === "block" && window.innerWidth > 900) {
        document.getElementById("menu-mobile-content").style.display = "none";
        document.getElementById("menu-mobile-content").classList.remove("open");
        document.getElementById("menu-mobile-content").classList.add("closed");
    }
}

window.addEventListener("resize", closeMobileMenu);


function showShowTimesCinema(id) {

    let schedule = document.querySelector(`#schedule-${id}`);
    let dark = document.querySelector('.dark');

    schedule.style.display = "flex";
    dark.style.display = "flex";
}

fetch('http://localhost:8081/daw/select * from cinema')
    .then(response => response.json())
    .then(data => {
        data.forEach(cinema => {
            let cinemaCard = document.createElement('div');
            cinemaCard.className = 'cinema-card';
            cinemaCard.id = cinema.id;
            cinemaCard.innerHTML = `
            <div class="cinema-card-content">
                <h3 class="cinema-card-title">${cinema.name}</h3>
                <p class="cinema-card-address">${cinema.address}</p>
                <p class="cinema-card-phone">${cinema.phoneNumber}</p>
            </div>
            `
            document.querySelector('.cinemas').appendChild(cinemaCard);
        });
    })
    .catch(error => console.log(error));

function hideShowTimesCinema(id) {

    let schedule = document.querySelector(`.st-unique`);
    let dark = document.querySelector('.dark');

    schedule.style.display = "none";
    dark.style.display = "none";
}