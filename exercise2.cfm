<cfif NOT IsDefined("SERVER.addressQuery")>

    <!--- Create new query ---> 
    <cfset addressQuery = QueryNew("userName, dob, houseNumber, street, town, region, country, postCode", 
                                   "VarChar, VarChar, VarChar, VarChar, VarChar, VarChar, VarChar, VarChar")> 

    <!--- Add five rows to the query ---> 
    <cfset newRow = QueryAddRow(addressQuery, 5)> 

    <!--- Set the values of the fields in the "addressQuery" query ---> 
    <cfset temp = QuerySetCell(addressQuery, "userName", "Cliff", 1)> 
    <cfset temp = QuerySetCell(addressQuery, "dob", "18/04/67", 1)> 
    <cfset temp = QuerySetCell(addressQuery, "houseNumber", "131", 1)> 
    <cfset temp = QuerySetCell(addressQuery, "street", "Point Clear Road", 1)> 
    <cfset temp = QuerySetCell(addressQuery, "town", "St Osyth", 1)> 
    <cfset temp = QuerySetCell(addressQuery, "region", "Essex", 1)> 
    <cfset temp = QuerySetCell(addressQuery, "country", "UK", 1)> 
    <cfset temp = QuerySetCell(addressQuery, "postCode", "CO16 8JA", 1)> 

    <cfset temp = QuerySetCell(addressQuery, "userName", "Andy", 2)> 
    <cfset temp = QuerySetCell(addressQuery, "dob", "12/08/71", 2)> 
    <cfset temp = QuerySetCell(addressQuery, "houseNumber", "46", 2)> 
    <cfset temp = QuerySetCell(addressQuery, "street", "Church Road", 2)> 
    <cfset temp = QuerySetCell(addressQuery, "town", "Folkstone", 2)> 
    <cfset temp = QuerySetCell(addressQuery, "region", "Kent", 2)> 
    <cfset temp = QuerySetCell(addressQuery, "country", "UK", 2)> 
    <cfset temp = QuerySetCell(addressQuery, "postCode", "TN24 1ED", 2)> 
        
    <cfset temp = QuerySetCell(addressQuery, "userName", "Stacy", 3)> 
    <cfset temp = QuerySetCell(addressQuery, "dob", "27/06/74", 3)> 
    <cfset temp = QuerySetCell(addressQuery, "houseNumber", "21", 3)> 
    <cfset temp = QuerySetCell(addressQuery, "street", "High Street", 3)> 
    <cfset temp = QuerySetCell(addressQuery, "town", "Whitchurch", 3)> 
    <cfset temp = QuerySetCell(addressQuery, "region", "Hampshire", 3)> 
    <cfset temp = QuerySetCell(addressQuery, "country", "UK", 3)> 
    <cfset temp = QuerySetCell(addressQuery, "postCode", "BK14 7JD", 3)> 
        
    <cfset temp = QuerySetCell(addressQuery, "userName", "Emma", 4)> 
    <cfset temp = QuerySetCell(addressQuery, "dob", "12/11/60", 4)> 
    <cfset temp = QuerySetCell(addressQuery, "houseNumber", "17", 4)> 
    <cfset temp = QuerySetCell(addressQuery, "street", "Cold Lane", 4)> 
    <cfset temp = QuerySetCell(addressQuery, "town", "Darlington", 4)> 
    <cfset temp = QuerySetCell(addressQuery, "region", "Durham", 4)> 
    <cfset temp = QuerySetCell(addressQuery, "country", "UK", 4)> 
    <cfset temp = QuerySetCell(addressQuery, "postCode", "DU1 8KR", 4)> 
        
    <cfset temp = QuerySetCell(addressQuery, "userName", "Steve", 5)> 
    <cfset temp = QuerySetCell(addressQuery, "dob", "01/10/61", 5)> 
    <cfset temp = QuerySetCell(addressQuery, "houseNumber", "3a", 5)> 
    <cfset temp = QuerySetCell(addressQuery, "street", "Kirkstrasse", 5)> 
    <cfset temp = QuerySetCell(addressQuery, "town", "Russellsheim", 5)> 
    <cfset temp = QuerySetCell(addressQuery, "region", "Frankfurt", 5)> 
    <cfset temp = QuerySetCell(addressQuery, "country", "Germany", 5)> 
    <cfset temp = QuerySetCell(addressQuery, "postCode", "10014", 5)>  

    <!--- Assign to SERVER scope --->
    <cfset SERVER.addressQuery = addressQuery>
        
</cfif>

<!--- <cfdump var="#SERVER.addressQuery#"> --->

<html>
<head>
<script type="text/javascript" src="exercise2.js"></script>
</head>
<body>

    <title>Exercise 2</title>

    <form action="javascript:void(0);">
        <table>
            <tr><td>User Name:</td>
                <td><input type="text" name="userName" id="userName">*</td></tr>
            <tr><td>Date Of Birth:</td>
                <td><input type="text" name="dob" id="dob">*</td></tr>
            <tr><td>House Number:</td>
                <td><input type="text" name="houseNumber" id="houseNumber">*</td></tr>
            <tr><td>Street:</td>
                <td><input type="text" name="street" id="street" disabled></td></tr>
            <tr><td>Town:</td>
                <td><input type="text" name="town" id="town" disabled></td></tr>
            <tr><td>Region:</td>
                <td><input type="text" name="region" id="region" disabled></td></tr>
            <tr><td>Country:</td>
                <td><input type="text" name="country" id="country" disabled></td></tr>
            <tr><td>Post Code:</td>
                <td><input type="text" name="postCode" id="postCode">*</td></tr>
            <tr><td>&nbsp;</td>
                <td><button onclick="getAddress(document.getElementById('userName'), document.getElementById('dob'), document.getElementById('houseNumber'), document.getElementById('postCode'))">Get Address</button></td></tr>
        </table><br />
        (All fields marked * are mandatory)
    </form>
    
    <div id="returnArea"></div>
    <hr>
    Testing<br />
    <button onclick="testVals1()">Cliff</button>
    <button onclick="testVals2()">Andy</button>
    <button onclick="testVals3()">Stacy</button>
    <button onclick="testVals4()">Emma</button>
    <button onclick="testVals5()">Steve</button>
    
</body>
</html>