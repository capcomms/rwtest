function testVals1() {
    //These values will not pass the test
    document.getElementById("f1").value = "1";
    document.getElementById("f2").value = "2";
    document.getElementById("f3").value = "3";
    document.getElementById("f4").value = "4";
    document.getElementById("f5").value = "5";
    document.getElementById("f6").value = "6";
    document.getElementById("f7").value = "";
    document.getElementById("f8").value = "";
    document.getElementById("f9").value = "";
    document.getElementById("f10").value = "";
}

function testVals2() {
    //These values will pass the test
    document.getElementById("f1").value = "1";
    document.getElementById("f2").value = "2";
    document.getElementById("f3").value = "3";
    document.getElementById("f4").value = "4";
    document.getElementById("f5").value = "5";
    document.getElementById("f6").value = "6";
    document.getElementById("f7").value = "4";
    document.getElementById("f8").value = "";
    document.getElementById("f9").value = "";
    document.getElementById("f10").value = "";
}

function testVals3() {
    //These values will pass the test
    document.getElementById("f1").value = "1";
    document.getElementById("f2").value = "2";
    document.getElementById("f3").value = "3";
    document.getElementById("f4").value = "4";
    document.getElementById("f5").value = "5";
    document.getElementById("f6").value = "6";
    document.getElementById("f7").value = "4";
    document.getElementById("f8").value = "5";
    document.getElementById("f9").value = "6";
    document.getElementById("f10").value = "";
}

function testVals4() {
    //These values will not pass the test
    document.getElementById("f1").value = "1";
    document.getElementById("f2").value = "2";
    document.getElementById("f3").value = "3";
    document.getElementById("f4").value = "4";
    document.getElementById("f5").value = "";
    document.getElementById("f6").value = "";
    document.getElementById("f7").value = "";
    document.getElementById("f8").value = "";
    document.getElementById("f9").value = "";
    document.getElementById("f10").value = "";
}

function testVals5() {
    //These are the values provided in the exercise
    //These values will pass the test
    document.getElementById("f1").value = "5";
    document.getElementById("f2").value = "9";
    document.getElementById("f3").value = "7";
    document.getElementById("f4").value = "17";
    document.getElementById("f5").value = "6";
    document.getElementById("f6").value = "5";
    document.getElementById("f7").value = "4";
    document.getElementById("f8").value = "6";
    document.getElementById("f9").value = "";
    document.getElementById("f10").value = "";
}