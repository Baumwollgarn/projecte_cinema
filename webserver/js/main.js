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


