function myFunction() {
    var person = prompt("Please enter your name");
    if (person != null) {
        document.getElementById('<%= titulo2.ClientID %>').innerHTML = person
        person.value = document.getElementById("titulo").innerHTML
    }
}