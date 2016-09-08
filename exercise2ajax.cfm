<cfquery dbtype="query" name="getUser">
    SELECT  userName,
            dob,
            houseNumber,
            street,
            town,
            region,
            country,   
            postCode
    FROM    SERVER.addressQuery
    WHERE   userName    = <cfqueryparam value = "#URL.uname#"       cfsqltype="cf_sql_varchar">
        AND dob         = <cfqueryparam value = "#URL.dob#"         cfsqltype="cf_sql_varchar">
        AND houseNumber = <cfqueryparam value = "#URL.houseno#"     cfsqltype="cf_sql_varchar">
        AND postCode    = <cfqueryparam value = "#URL.postcode#"    cfsqltype="cf_sql_varchar">
</cfquery>

<cfif getUser.Recordcount IS 0>
    <script type="text/javascript" id="performUpdate">
        function performUpdate() {
            document.getElementById("returnArea").innerHTML = 'No user found';
            }
    </script>
<cfelse>
    <cfoutput query="getUser">
    <script type="text/javascript" id="performUpdate">
        function performUpdate() {
            document.getElementById("userName").value = '#userName#';
            document.getElementById("dob").value = '#dob#';
            document.getElementById("houseNumber").value = '#houseNumber#';
            document.getElementById("street").value = '#street#';
            document.getElementById("town").value = '#town#';
            document.getElementById("region").value = '#region#';
            document.getElementById("country").value = '#country#';
            document.getElementById("postCode").value = '#postCode#';
            }
    </script>
    </cfoutput>
</cfif>