// Fetch all the cities from the database and return them as a JSON object

    fetch('https://servicios.ine.es/wstempus/js/ES/VALORES_VARIABLE/328?page=11')
    .then(response => response.json())
    .then(cities => {
        // Add every city as a new datalist option
        cities.forEach(city => {
            let option = document.createElement('option');
            option.value = city.Nombre;
            option.innerHTML = city.Nombre;
            document.getElementById('city').appendChild(option);
        })
    })
    .catch(error => console.error(error));
