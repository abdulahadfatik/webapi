const form = {
    admin_id: document.getElementById("admin_id"),
    pwd: document.getElementById("pwd"),
    submit: document.getElementById("submit"),
    message: document.getElementById("form-message")
};

form.submit.addEventListener('click', submit => {
    const request = new XMLHttpRequest();

    request.onload = () => {
        console.log(request.responseText);
    };

    const requestData = 'admin_id = $(form.admin_id.value) & pwd=$(form.pwd.value)';
    console.log(requestData);

    request.open('post', 'validate.php');
    request.setRequestHeader('Content-type', 'applicaiton/x-www-form-urlencoded');
    request.send(requestData);
});