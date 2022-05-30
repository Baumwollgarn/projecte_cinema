function createMovieCard(movieData) {
    let movieCard = document.createElement('div')
    movieCard.className = "card"
    movieCard.id = movieData.idMovie
    movieCard.innerHTML = `
    <img src="${movieData.image}" alt="${movieData.generic}" class="card-image" onclick="openTrailerPopUp(${movieData.idMovie})">
            <h3 class="card-title">${movieData.generic}</h3>`
    document.querySelector('.movieCards').appendChild(movieCard)
}

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
            <h3 class="showtimes-title">Bienvenidos al <b>${data.name}</b></h3>
            <h5>Selecciona una pel·licula</h5>
            <div class="cinema-selector-max">
                <form action="" class="cinema-selector_form">
                    <label for="movie-selector"></label>
                    <select name="movie-selector" id="movie-selector-${data.idCinema}" class="movie-selector">
                    </select>
                    <label for="session-selector"></label>
                    <select name="session-selector" id="session-selector-${data.idCinema}" class="session-selector">
                    <option value="none">Selecciona una sessió</option>
                    <option value="09">09:00 - 11:00</option>
                    <option value="11">11:00 - 13:00</option>
                    <option value="13">13:00 - 15:00</option>
                    <option value="15">15:00 - 17:00</option>
                    <option value="17">17:00 - 19:00</option>
                    <option value="19">19:00 - 21:00</option>
                    <option value="21">21:00 - 23:00</option>
                    </select>
                    <button type="submit" class="submit-button">
                        <i class="fas fa-ticket-alt"></i>
                        <span>Comprar</span>
                </form>
            </div>
    </div>
               `
    cardContent.appendChild(card);
    document.querySelector('.cinemas').appendChild(cardContent);
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

fetch('http://localhost:8081/daw/select * from cinema order by name')
    .then(response => response.json())
    .then(data => {
        for (let i = 0; i < data.data.length; i++) {
            createCard(data.data[i]);
        }}
    )
    .then (() => {
        document.querySelectorAll('.cinema-card').forEach(cinema => {
            let idCinema = cinema.id;
            fetch(`http://localhost:8081/daw/select * from movie`)
                .then(response => response.json())
                .then(data => {
                    let movieSelector = document.querySelector(`#movie-selector-${idCinema}`);
                    movieSelector.innerHTML = `<option value="0">Selecciona una pelicula</option>`;
                    data.data.forEach(movie => {
                        movieSelector.innerHTML += `<option value="${movie.idMovie}">${movie.generic}</option>`;
                    });
                })
                .catch(error => console.log(error));
        });
    })
    .catch(error => console.log(error));

fetch('http://localhost:8081/daw/SELECT * FROM `movie` ORDER BY `movie`.`rating` DESC LIMIT 5\n')
    .then(response => response.json())
    .then(data => {
        let topRated = document.querySelector('.recommended');
        data.data.forEach(movie => {
            topRated.innerHTML += `
            <div class="top-rated-movie">
                <img src="${movie.image}" alt="${movie.idMovie}">
                <div>
                <div class="movie-title">${movie.generic}</div>
                <span class="star-${movie.id} fa full"></span>
                <span class="star-${movie.id} fa full"></span>
                <span class="star-${movie.id} fa full"></span>
                <span class="star-${movie.id} fa full"></span>
                <span class="star-${movie.id} fa full"></span>
                 </div>
            </div>
            `
        });
    })
    .then(() =>
        document.querySelectorAll('.top-rated-movie').forEach(movie => {
        let idMovie = movie.children[0].getAttribute('alt');
        fetch(`http://localhost:8081/daw/select * from movie where idMovie = "${idMovie}"`)
            .then(response => response.json())
            .then(data => {
                let rating = data.data[0].rating;
                console.log(rating);
                if (rating === 1) {
                    movie.children[1].children[1].classList.add('fa-star-half-o');
                    movie.children[1].children[2].classList.add('fa-star-o');
                    movie.children[1].children[3].classList.add('fa-star-o');
                    movie.children[1].children[4].classList.add('fa-star-o');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 2) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star-o');
                    movie.children[1].children[3].classList.add('fa-star-o');
                    movie.children[1].children[4].classList.add('fa-star-o');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 3) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star-half-o');
                    movie.children[1].children[3].classList.add('fa-star-o');
                    movie.children[1].children[4].classList.add('fa-star-o');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 4) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star');
                    movie.children[1].children[3].classList.add('fa-star-o');
                    movie.children[1].children[4].classList.add('fa-star-o');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 5) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star');
                    movie.children[1].children[3].classList.add('fa-star-half-o');
                    movie.children[1].children[4].classList.add('fa-star-o');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 6) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star');
                    movie.children[1].children[3].classList.add('fa-star');
                    movie.children[1].children[4].classList.add('fa-star-o');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 7) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star');
                    movie.children[1].children[3].classList.add('fa-star');
                    movie.children[1].children[4].classList.add('fa-star-half-o');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 8) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star');
                    movie.children[1].children[3].classList.add('fa-star');
                    movie.children[1].children[4].classList.add('fa-star');
                    movie.children[1].children[5].classList.add('fa-star-o');
                } else if (rating === 9) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star');
                    movie.children[1].children[3].classList.add('fa-star');
                    movie.children[1].children[4].classList.add('fa-star');
                    movie.children[1].children[5].classList.add('fa-star-half-o');
                } else if (rating === 10) {
                    movie.children[1].children[1].classList.add('fa-star');
                    movie.children[1].children[2].classList.add('fa-star');
                    movie.children[1].children[3].classList.add('fa-star');
                    movie.children[1].children[4].classList.add('fa-star');
                    movie.children[1].children[5].classList.add('fa-star');
                }
            })
    }))
    .catch(error => console.log(error));


