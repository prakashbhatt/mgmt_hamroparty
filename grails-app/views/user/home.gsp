<%@ page import="org.hamroparty.user.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

   <script>
       $('.general_cell').click(function(){
           var link ="${g.createLink(controller: 'registrationController', action: 'testAction')}";
           window.open(link, '', 'width=200,height=100');
       });
   </script>

</head>

<body class="body_fullpage">
<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link controller="user" action="home"><g:message code="default.home.label"/></g:link></li>

        <g:if test="${session.user.role=="admin"}">

            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="create" controller="registration"><g:message code="New Registration"
                                                                                            args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="list" controller="payRole"><g:message code="Payment"
                                                                                            args="[entityName]"/></g:link></li>

        </g:if>
        <li><g:link controller="user" action="logout">Logout</g:link></li>
    </ul>
</div>

<div id="list-user" class="content scaffold-list" role="main">



    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:if test="${session.user.role=="admin"}">
        <h1><g:message code="New application for memberships" args="[entityName]"/></h1>
        <table>
            <thead>
            <tr>
                <g:sortableColumn property="firstName" title="${message(code: 'registration.firstName.label', default: 'First Name')}"/>
                <g:sortableColumn property="lastName" title="${message(code: 'registration.lastName.label', default: 'Last Name')}"/>
                <g:sortableColumn property="emailAddress" title="${message(code: 'registration.email.label', default: 'Email')}"/>
                <g:sortableColumn property="contractNo" title="${message(code: 'registration.contractNo.label', default: 'Contact')}"/>
                <g:sortableColumn property="memberStatus" title="${message(code: 'registration.memberStatus.label', default: 'Member Status')}"/>
                <g:sortableColumn property="action" title="${message(code: 'action', default: 'Action')}"/>
            </tr>

            </thead>

            <tbody>
            <g:form>
              <tr>
                  <td><input type="text" class="searchBox" name="firstName" id="firstName"></td>
                  <td><input type="text" class="searchBox" name="lastName" id="lastName"></td>
                  <td><input type="text" class="searchBox" name="emailAddress" id="emailAddress"></td>
                  <td><input type="text" class="searchBox" name="contractNo" id="contractNo"></td>
                  <td><input type="text" class="searchBox" name="memberStatus" id="memberStatus"></td>
                  <td><g:actionSubmit action="home" controller="user" value="Search"/></td>
              </tr>
                <input type="hidden" name="newMember" id="newMember" value="newMember">
             </g:form>

            <g:if test="${newRegistration.size()>0}">

                <g:each in="${newRegistration}" status="i" var="userInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" controller="registration" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "firstName")}</g:link></td>
                        <td>${fieldValue(bean: userInstance, field: "lastName")}</td>
                        <td>${fieldValue(bean: userInstance, field: "emailAddress")}</td>
                        <td>${fieldValue(bean: userInstance, field: "contractNo")}</td>
                        <td class="blink_text">${fieldValue(bean: userInstance, field: "memberStatus")}  &#10026</td>
                        <td>
                            <g:link controller="registration" action="acceptMember" params="[id:"${userInstance.id}"]" onclick = "return confirm('Are you sure?');">Accept</g:link> /
                            <g:link controller="registration" action="deniedMember" params="[id:"${userInstance.id}"]" onclick = "return confirm('Are you sure?. Please confirm for delete member from the system.');">Reject</g:link>
                        </td>
                    </tr>
                </g:each>
            </g:if>
            <g:else>
                <tr><td colspan="5" style="text-align: center">New application for membership not found</td></tr>
            </g:else>
            </tbody>

        </table>

        <div class="pagination">
            <g:paginate total="${newTotal}"/>
        </div>
    </g:if>





    <h1><g:message code="Party Memberships" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

        <table>
            <thead>
            <tr>
                <g:sortableColumn property="memberId" title="${message(code: 'registration.memberId.label', default: 'Member ID')}"/>
                <g:sortableColumn property="firstName" title="${message(code: 'registration.firstName.label', default: 'First Name')}"/>
                <g:sortableColumn property="lastName" title="${message(code: 'registration.lastName.label', default: 'Last Name')}"/>
                <g:sortableColumn property="emailAddress" title="${message(code: 'registration.email.label', default: 'Email')}"/>
                <g:sortableColumn property="contractNo" title="${message(code: 'registration.contractNo.label', default: 'Contact')}"/>
                <g:sortableColumn property="memberStatus" title="${message(code: 'memberStatus', default: 'Member Status')}"/>
                <g:sortableColumn property="action" title="${message(code: 'action', default: 'Accepted By')}"/>
            </tr>

            </thead>

            <tbody>

            <g:form>
                <tr>
                    <td><input type="text" class="searchBox" name="memberId"></td>
                    <td><input type="text" class="searchBox" name="firstName"></td>
                    <td><input type="text" class="searchBox" name="lastName"></td>
                    <td><input type="text" class="searchBox" name="emailAddress"></td>
                    <td><input type="text" class="searchBox" name="contractNo" ></td>
                    <td><input type="text" class="searchBox" name="memberStatus" ></td>
                    <td><g:actionSubmit action="home" controller="user" value="Search"/></td>
                </tr>
                <input type="hidden" name="oldMember" value="oldMember">
            </g:form>

            <g:if test="${oldRegistration.size()>0}">
                <g:each in="${oldRegistration}" status="i" var="userInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show" controller="registration" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "memberId")}</g:link></td>
                        <td>${fieldValue(bean: userInstance, field: "firstName")}</td>
                        <td>${fieldValue(bean: userInstance, field: "lastName")}</td>
                        <td>${fieldValue(bean: userInstance, field: "emailAddress")}</td>
                        <td>${fieldValue(bean: userInstance, field: "contractNo")}</td>
                        <td>${fieldValue(bean: userInstance, field: "memberStatus")}</td>
                        <td>"${User.get(userInstance.acceptedBy)}"</td>
                       %{-- <td>
                           <g:link controller="registration" action="deniedMember" params="[id:"${userInstance.id}", acceptMember:"false"]" onclick = "return confirm('Are you sure?. This member is seen in new list again.');">Reject</g:link>
                        </td>--}%
                    </tr>
                </g:each>
            </g:if> <g:else>
                <tr><td colspan="5" style="text-align: center">Valid Membership not found</td></tr>
            </g:else>
            </tbody>

        </table>

        <div class="pagination">
            <g:paginate total="${total}"/>
        </div>
</div>


</body>
</html>
