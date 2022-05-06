// Fetch all the cities from the database and return them as a JSON object

    fetch('/cities')
    .then(response => response.json())
    .then(cities => {
        // Add every city as a new datalist option
        cities.forEach(city => {
            let option = document.createElement('option');
            option.value = city.name;
            option.innerHTML = city.name;
            document.getElementById('city').appendChild(option);
        })
    })
    .catch(error => console.error(error));
