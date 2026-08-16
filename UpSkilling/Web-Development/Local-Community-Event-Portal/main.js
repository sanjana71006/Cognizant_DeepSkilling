// Welcome
window.onload = function () {
    console.log("Portal loaded");
    alert("Welcome to the Community Event Portal!");
};


// Variables
const portalName = "Community Portal";
let seats = 50;

console.log(`${portalName} has ${seats} seats available`);


// Events
const events = [
    {
        id: 1,
        name: "Tech Meetup",
        category: "Technology",
        date: "2026-09-10",
        fee: 0,
        seats: 20
    },
    {
        id: 2,
        name: "Music Festival",
        category: "Music",
        date: "2026-09-15",
        fee: 200,
        seats: 50
    },
    {
        id: 3,
        name: "Web Workshop",
        category: "Workshop",
        date: "2026-09-20",
        fee: 100,
        seats: 30
    }
];


// Class
class Event {
    constructor(name, category) {
        this.name = name;
        this.category = category;
    }

    checkAvailability() {
        return true;
    }
}

const e1 = new Event("Tech Meetup", "Technology");
console.log(Object.entries(e1));


// Display events
function displayEvents(list) {

    const container =
        document.getElementById("eventContainer");

    container.innerHTML = "";

    list.forEach(function (event) {

        const card = document.createElement("div");

        card.className = "eventCard";

        card.innerHTML = `
            <h3>${event.name}</h3>
            <p>Category: ${event.category}</p>
            <p>Date: ${event.date}</p>
            <p>Fee: ₹${event.fee}</p>
            <p>Seats: ${event.seats}</p>
            <button onclick="register(${event.id})">
                Register
            </button>
        `;

        container.append(card);
    });
}

displayEvents(events);


// Filter
document.getElementById("categoryFilter")
    .addEventListener("change", function () {

        const category = this.value;

        const result = events.filter(function (event) {

            return category === "all" ||
                   event.category === category;
        });

        displayEvents(result);
    });


// Search
document.getElementById("searchInput")
    .addEventListener("keydown", function (event) {

        if (event.key === "Enter") {

            const text = this.value.toLowerCase();

            const result = events.filter(function (item) {
                return item.name.toLowerCase().includes(text);
            });

            displayEvents(result);
        }
    });


// Registration
function register(id) {

    const event = events.find(function (item) {
        return item.id === id;
    });

    if (event.seats > 0) {

        event.seats--;

        alert("Registration successful!");

        displayEvents(events);

    } else {

        alert("No seats available.");
    }
}


// Form
document.getElementById("registrationForm")
    .addEventListener("submit", function (e) {

        e.preventDefault();

        const name =
            document.getElementById("name").value;

        document.getElementById("confirmation")
            .textContent =
            `Thank you ${name}! Registration successful.`;

        localStorage.setItem("name", name);
        sessionStorage.setItem("name", name);
    });


// Phone validation
document.getElementById("phone")
    .addEventListener("blur", function () {

        if (!/^[0-9]{10}$/.test(this.value)) {
            alert("Enter a valid 10-digit phone number.");
        }
    });


// Character counter
document.getElementById("message")
    .addEventListener("input", function () {

        document.getElementById("charCount")
            .textContent = this.value.length;
    });


// Video
function videoReady() {
    document.getElementById("videoMessage")
        .textContent = "Video is ready.";
}


// Geolocation
function getLocation() {

    if (navigator.geolocation) {

        navigator.geolocation.getCurrentPosition(
            function (position) {

                document.getElementById("locationResult")
                    .textContent =
                    `Latitude: ${position.coords.latitude},
                     Longitude: ${position.coords.longitude}`;
            },

            function () {
                document.getElementById("locationResult")
                    .textContent =
                    "Unable to get location.";
            }
        );

    } else {

        document.getElementById("locationResult")
            .textContent =
            "Geolocation is not supported.";
    }
}


// Fetch
fetch("https://jsonplaceholder.typicode.com/posts")
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.log(error));


// Async/Await
async function loadData() {

    try {

        const response =
            await fetch(
                "https://jsonplaceholder.typicode.com/posts"
            );

        const data = await response.json();

        console.log(data);

    } catch (error) {

        console.log(error);
    }
}

loadData();


// Array methods
const names = events.map(event => event.name);

console.log(names);


// Spread operator
const copy = [...events];

console.log(copy);


// Function with callback
function filterEvents(category, callback) {

    const result = events.filter(
        event => event.category === category
    );

    callback(result);
}

filterEvents("Technology", function (result) {
    console.log(result);
});


// jQuery
$(document).ready(function () {

    $("#feedbackBtn").click(function () {
        $("#feedbackText").fadeIn();
    });

});