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
        }
    })

let cardContent = document.createElement('div');
cardContent.className = 'cinemas';

function createCard(data) {
    let card = document.createElement('div');
    card.className = 'cinema-card';
    card.innerHTML = `
    <img src="${data.download_url}" alt="cine_1" class="cinema-image">
                <h3 class="cinema-title">Cine ${data.author}</h3>
                <p class="cinema-address">Carrer de la Rambla, 1, 08002 Barcelona</p>
                <p class="cinema-phone">${data.width} ${data.height}</p>
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
