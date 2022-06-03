function getFormValues() {
    // Get the form values and store them in an object
    let cinema = {
        name: document.forms["insertForm"]["cinema-name"].value,
        address: document.forms["insertForm"]["cinema-address"].value,
        city: document.forms["insertForm"]["cinema-city"].value,
        phone: document.forms["insertForm"]["cinema-phone-number"].value,
        email: document.forms["insertForm"]["cinema-email"].value,
    }
    console.log(cinema);
    // Send the cinema to the server
    fetch(`http://localhost:8081/daw/INSERT INTO cinema (name, address, idCity, phoneNumber, email)\nVALUES ("${cinema.name}","${cinema.address}",${cinema.city},"${cinema.phone}","${cinema.email}")`)
        .then(response => response.json())
        .then(data => console.log(data))
        .catch(error => console.log(error));
}