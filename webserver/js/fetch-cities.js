// Fetch all the cities from the database and return them as a JSON object

    fetch('http://localhost:8081/daw/SELECT * FROM city')
    .then(response => response.json())
    .then(cities => {
        // Add every city as a new datalist option
        cities.data.forEach(city => {
            let option = document.createElement('option');
            option.value = city.idCity;
            option.innerHTML = city.nameCity;
            document.getElementById('city').appendChild(option);
        })
    })
    .catch(error => console.error(error));
