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
                card.onclick = showShowTimes(data.ID)
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

function createCard(data,id) {
    let card = document.createElement('div');
    card.className = 'cinema-card';
    card.id = data.id
    card.addEventListener('click', createShowTimes(data.id))
    card.innerHTML = `
    <img src="${data.download_url}" alt="cine_1" class="cinema-image">
                <h3 class="cinema-title">Cine ${data.author}</h3>
                <p class="cinema-address">Carrer de la Rambla, 1, 08002 Barcelona</p>
                <p class="cinema-phone">${data.width} ${data.height}</p>
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

cinema.addEventListener('click', function (e) {
    if (e.target.classList.contains('cinema-card')) {
        createShowTimes(e.target.id);
    }
});

function createShowTimes (id) {
    let showTimes = document.createElement('div');
    showTimes.className = 'show-times';
    showTimes.innerHTML = `
    <h3 class="show-times-title">Show Times</h3>
    `
}
