// Function to hide "showTimes"
function hideShowTimes() {
    document.getElementById("showTimes").style.display = "none";
    document.getElementById("dark").style.display = "none";
}

function showShowTimes(id) {
    document.getElementById("showTimes").style.display = "flex";
    document.getElementById("dark").style.display = "flex";
}

function getMovies() {
    fetch("/api/movies")
        .then(function (response) {
            return response.json();
        })
        .then(function (data) {
            let movies = data.movies;
            let movieCards = document.getElementById("movieCards");
            for (let i = 0; i < movies.length; i++) {
                let movie = movies[i];
                let card = document.createElement("div");
                card.className = "card"
                card.id = movie.id
                card.innerHTML = `
            <img src="${data.image}" alt="cine_1" class="card-image">
            <h3 class="card-title">${data.title}</h3>
            `;
                movieCards.appendChild(card);
            }
        })
}

fetch('https://picsum.photos/v2/list?page=2&limit=13')
    .then(response => response.json())
    .then(data => {
        for (const dataItem of data) {
            createCard(dataItem);
            createRadioButton(dataItem);
        }
    })

let cardContent = document.createElement('div');
cardContent.className = 'cinemas';

function createCard(data) {
    let card = document.createElement('div');
    card.className = 'cinema-card';
    card.id = data.id
    card.addEventListener('click', function (e) {
        createShowTimes(data.id);
    });
    card.addEventListener('click', function (e) {
        showShowTimesCinema(data.id)
    })
    card.innerHTML = `
    <img src="${data.download_url}" alt="cine_1" class="cinema-image">
                <h3 class="cinema-title">Cine ${data.author}</h3>
                <p class="cinema-address">Carrer de la Rambla, 1, 08002 Barcelona</p>
                <p class="cinema-phone">${data.width} ${data.height}</p>
                    <div class="showtimes st-unique" id="schedule-${data.id}">
        <h3 class="showtimes-title">Bienvenidos al ${data.author}</h3>
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
        <i class="fa-solid fa-times close" onclick="hideShowTimes()"> Tancar</i>
    </div>
               `
    cardContent.appendChild(card);
    document.querySelector('.cinemas').appendChild(cardContent);
}

function createRadioButton(data) {
        let option = document.createElement('option');
        option.value = data.author;
        option.innerHTML = data.author;
        document.querySelector('.cinema-selector').appendChild(option);
        
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

let language = document.getElementById("language-picker-select").valueOf();

function changeLanguage (language) {
    if (language === "español") {
        
    } else if (language === "english") {
        
    } else if (language === "catalan") {
        
    } else if (language === "deutsch") {
        
    }
}

const cinema = document.querySelector('.cinema-card');

/*cinema.addEventListener('click', function (e) {
    if (e.target.classList.contains('cinema-card')) {
        createShowTimes(e.target.id);
    }
});*/


/*function createShowTimes (id) {
    let showTimes = document.createElement('div');
    showTimes.className = 'showtimes';
    showTimes.innerHTML = `
    <div class="schedule" id="schedule-${id}">
            <h3 class="schedule-title">Horari</h3>
            <div class="schedule-content">
                <div class="schedule-item">
                    <div class="schedule-item-content">
                        <h4 class="schedule-item-title">Sessio 1</h4>
                        <p class="schedule-item-time">10:00 - 12:00</p>
                    </div>
                </div>
                <div class="schedule-item">
                    <div class="schedule-item-content">
                        <h4 class="schedule-item-title">Sessio 2</h4>
                        <p class="schedule-item-time">12:00 - 14:00</p>
                    </div>
                </div>
            </div>
        </div>
    `
    document.querySelector('.cinemas').appendChild(showTimes);
}*/

function showShowTimesCinema(id) {
    
    let schedule = document.querySelector(`#schedule-${id}`);
    let dark = document.querySelector('.dark');

    if (schedule.style.display === "none") {
        schedule.style.display = "flex";
        dark.style.display = "flex";
    } else {
        schedule.style.display = "none";
        dark.style.display = "none";
    }   
}