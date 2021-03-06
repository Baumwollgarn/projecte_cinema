fetch('http://localhost:8081/daw/SELECT multimedia.link, movie.idMovie FROM multimedia, movie WHERE multimedia.idMovie = movie.idMovie;')
    .then(function (response) {
        return response.json();
    })
    .then(movieTrailer => {
        for (let i = 0; i < movieTrailer.data.length; i++) {
            createTrailerCard(movieTrailer.data[i]);
        }
    })
    .catch(function (error) {
        console.log(error);
    });

function createTrailerCard(movieTrailer) {
    let trailerCard = document.createElement('div');
    trailerCard.classList.add('trailerCard');
    trailerCard.id = `trailer-${movieTrailer.idMovie}`
    trailerCard.innerHTML = `
        ${movieTrailer.link}
    `;
    trailerCard.addEventListener('click', function () {
        trailerCard.classList.toggle('trailerCard-active');
    });
    document.querySelector('.trailerPopUp').appendChild(trailerCard);
}

function openTrailerPopUp(id) {
    let trailerId = 'trailer-' + id;
    let trailerCard = document.getElementById(trailerId);
    let dark = document.querySelector('.dark');
    trailerCard.style.display = 'block';
    dark.style.display = 'block';
}
