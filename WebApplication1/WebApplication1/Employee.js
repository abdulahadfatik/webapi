const api_url =
    "https://localhost:5001/api/Employee";

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
    <td>${r.EmployeeId} </td>
    <td>${r.EmployeeName}</td>
    <td>${r.DateOfBirth}</td> 
    <td>${r.Gender}</td>
    <td>${r.CurrentAddress}</td>
    <td>${r.PermanentAddress}</td>
    <td>${r.City}</td>
    <td>${r.Nationality}</td>
    <td>${r.PINCode}</td>
    </tr>`;
    }
    // Setting innerHTML as tab variable
    document.getElementById("employee").innerHTML = tab;
}