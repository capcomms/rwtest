<html>
<head>
<script type="text/javascript" src="exercise1.js"></script>
</head>
<body>

    <title>Exercise 1</title>
    
    <cfif IsDefined("FORM.f1")>

        <!--- Set initial variables --->
        <cfset totalValue = 0>
        <cfset runningValue = 0>
        <cfset leftHandValue = 0>
        <cfset rightHandValue = 0>

        <!--- Create array --->
        <cfset testArray = ArrayNew(1)>

        <cfloop from="1" to="10" index="i">
            <cfset testVar = form["f" & i]>

            <!--- Determine how long the array will be --->
            <cfif Isnumeric(testVar) AND Len(testVar) GT 0>
                <cfset testArray[#i#] = testVar> 
            </cfif>
        </cfloop>

        <!--- Assign length of array to a variable --->        
        <cfset testArrayLen = ArrayLen(testArray)>     


        <cfif testArrayLen LT 3>

            This array does not have enough elements to test!

        <cfelse>

            <cfoutput>This array has #testArrayLen# elements</cfoutput>

            <cfdump var="#testArray#">

            <!--- Calculate total value --->
            <cfset totalValue = ArraySum(testArray)>

            <!--- Divide total value by 2, to help determine which element is the pivot --->
            <cfset halfValue = #totalValue#/2> 

            <!--- Loop through array to determine which element is the pivot --->
            <cfloop from="1" to="#testArrayLen#" index="i">
                <cfset runningValue = runningValue + testArray[#i#]><p>

                <cfif runningValue GT halfValue>
                    <cfset halfwayPoint = #i#>
                    <cfbreak>
                </cfif>
            </cfloop> 

            <p>

            <!--- Report pivot element --->
            Pivot Element = <cfoutput>#halfwayPoint#</cfoutput><p>

            <cfset beforeHalfWayPoint = halfwayPoint - 1>    

            <!--- Calculate left-hand value total --->
            <cfloop from="1" to="#beforeHalfWayPoint#" index="i">
                <cfset leftHandValue = leftHandValue + testArray[#i#]><p>
            </cfloop> 

            <cfset afterHalfWayPoint = halfwayPoint + 1>  

            <!--- Calculate right-hand value total --->
            <cfloop from="#afterHalfWayPoint#" to="#testArrayLen#" index="i">
                <cfset rightHandValue = rightHandValue + testArray[#i#]><p>
            </cfloop>     

            <!--- Report conclusion --->
            The values either side of the pivot element <strong>do <cfif leftHandValue NEQ rightHandValue>not </cfif></strong>have the same total value

        </cfif>

        <hr>    

        <a href="exercise1.cfm"><button>Start again?</button></a>        

    <cfelse>    

        (Max array size = 10)<p>

        <form method="post" action="exercise1.cfm">
            <cfloop from="1" to="10" index="i">
                <cfoutput>#i#:<input type="text" size="3" name="f#i#" id="f#i#"></cfoutput>
            </cfloop>
            <input type="submit" value="Check Array">
        </form>

        <hr>
        Testing<br />
        <button onclick="testVals1()">Use Test Vals 1</button><br />
        <button onclick="testVals2()">Use Test Vals 2</button><br />
        <button onclick="testVals3()">Use Test Vals 3</button><br />
        <button onclick="testVals4()">Use Test Vals 4</button><p>
        <button onclick="testVals5()">Provided Example Vals</button>

    </cfif>

</body>
</html>