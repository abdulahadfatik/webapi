

const { Script } = require("vm");
const api_url =
    "https://localhost:5001/api/Employee";

const cors = require("cors");
const corsOptions = {
    origin: '*',
    credentials: true,            //access-control-allow-credentials:true
    optionSuccessStatus: 200,
}

app.use(cors(corsOptions)) // Use this after the variable declaration

// Defining async function
async function getapi(url) {

    // Storing response
    const response = await fetch(url);

    // Storing data in form of JSON
    var data = await response.json();
    console.log(data);
    if (response) {
        hideloader();
    }
    show(data);
}
// Calling that async function
getapi(api_url);

// Function to hide the loader
function hideloader() {
    document.getElementById('loading').style.display = 'none';
}
// Function to define innerHTML for HTML table
function show(data) {
    let tab =
        `<tr>
          <th>ID</th>
          <th>Name</th>
          <th>Date of Birth</th>
          <th>Gender</th>
          <th>Current Address</th>
          <th>Permanent Address</th>
          <th>City</th>
          <th>Nationality</th>
          <th>PIN Code</th>
         </tr>`;

    // Loop to access all rows 
    for (let r of data.list) {
        tab += `<tr> 
    <td>${r.employeeId} </td>
    <td>${r.employeeName}</td>
    <td>${r.dateOfBirth}</td>
    <td>${r.gender}</td>
    <td>${r.currentAddress}</td>
    <td>${r.permanentAddress}</td>
    <td>${r.city}</td>
    <td>${r.nationality}</td>
    <td>${r.pinCode}</td>
    </tr>`;
    }
    // Setting innerHTML as tab variable
    document.getElementById("employee").innerHTML = tab;
}