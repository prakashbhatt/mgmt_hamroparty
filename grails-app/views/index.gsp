<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Hamro Party</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}
            #form-body {
                margin: 2em 1em 1.00em 10em;
            }

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="page-body" role="main">
			<h1><u>Welcome to Hamro Party</u></h1>
			<p>

                Hamro Party is a new political force in the Federal Democratic Republic of Nepal.
                We adhere to progressive capitalism principles and believe that the government should
                partner with entrepreneurs to ensure K-12 education and employment for all.


                </br>
                </hr>



            </p>

        </br>
            <g:form id="login" action="home" controller="user" method="post">



                <table width="50%">

                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>

                   <tr>
                       <td>User Name</td>  <td><input type="text" name="name" id="name"></td>

                   </tr>

                    <tr>
                        <td>Password</td>  <td><input type="password" name="password" id="password"></td>
                    </tr>

                    <tr>

                        <td >&nbsp</td>
                        <td>
                        <g:submitButton name="btn" id="btn" value="Login"></g:submitButton></td>

                    </tr>

                </table>

            </g:form>



			<div id="controller-list" role="navigation">

				<ul>
                    Please click  <g:link action="registration" controller="registration">Membership Registration</g:link> for membership.
				</ul>
			</div>
		</div>
	</body>
</html>
