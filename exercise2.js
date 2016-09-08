function getAddress(uname, dob, houseno, postcode) {
    var xhttp;

    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("returnArea").innerHTML = this.responseText;
            eval(document.getElementById("performUpdate").innerHTML);
            setTimeout(performUpdate, 1000);
        }
    };
    xhttp.open("GET", "exercise2ajax.cfm?uname=" + uname.value + "&dob=" + dob.value + "&houseno=" + houseno.value + "&postcode=" + postcode.value, true);
    xhttp.send();
} 

function testVals1() {
    document.getElementById("userName").value = "Cliff";
    document.getElementById("dob").value = "18/04/67";
    document.getElementById("houseNumber").value = "131";
    document.getElementById("postCode").value = "CO16 8JA";
    document.getElementById("street").value = "";
    document.getElementById("town").value = "";
    document.getElementById("region").value = "";
    document.getElementById("country").value = "";
}

function testVals2() {
    document.getElementById("userName").value = "Andy";
    document.getElementById("dob").value = "12/08/71";
    document.getElementById("houseNumber").value = "46";
    document.getElementById("postCode").value = "TN24 1ED";
    document.getElementById("street").value = "";
    document.getElementById("town").value = "";
    document.getElementById("region").value = "";
    document.getElementById("country").value = "";
}

function testVals3() {
    document.getElementById("userName").value = "Stacy";
    document.getElementById("dob").value = "27/06/74";
    document.getElementById("houseNumber").value = "21";
    document.getElementById("postCode").value = "BK14 7JD";
    document.getElementById("street").value = "";
    document.getElementById("town").value = "";
    document.getElementById("region").value = "";
    document.getElementById("country").value = "";
}

function testVals4() {
    document.getElementById("userName").value = "Emma";
    document.getElementById("dob").value = "12/11/60";
    document.getElementById("houseNumber").value = "17";
    document.getElementById("postCode").value = "DU1 8KR";
    document.getElementById("street").value = "";
    document.getElementById("town").value = "";
    document.getElementById("region").value = "";
    document.getElementById("country").value = "";
}

function testVals5() {
    document.getElementById("userName").value = "Steve";
    document.getElementById("dob").value = "01/10/61";
    document.getElementById("houseNumber").value = "3a";
    document.getElementById("postCode").value = "10014";
    document.getElementById("street").value = "";
    document.getElementById("town").value = "";
    document.getElementById("region").value = "";
    document.getElementById("country").value = "";
}