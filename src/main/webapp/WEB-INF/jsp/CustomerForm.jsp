<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<a href="?language=en">English</a>|<a href="?language=ta_IN">Tamil</a>
<html>
    <head>
        <style>
            .error {
                color: #ff0000;
            }
            .errorblock{
                color: #000;
                background-color: #ffEEEE;
                border: 3px solid #ff0000;
                padding:8px;
                margin:16px;
            }

        </style>
    </head>

    <body>
        <h2><spring:message code="label.registrationForm"/></h2>

        <form:form method="POST" commandName="customer">

            <form:errors path="*" cssClass="errorblock" element="div"/>

            <table>
                <tr>
                    <td><spring:message code="label.userName"/>: </td>
                    <td><form:input path="userName" /></td>
                    <td><form:errors path="userName" cssClass="error" /></td>
                </tr>
                <tr>
                    <td><spring:message code="label.password"/> : </td>
                    <td><form:password path="password" /></td>
                    <td><form:errors path="password" cssClass="error" /></td>
                </tr>
                <tr>
                    <td><spring:message code="label.confirmPassword"/> : </td>
                    <td><form:password path="confirmPassword" /></td>
                    <td><form:errors path="confirmPassword" cssClass="error" /></td>
                </tr>
                <tr>
                    <td><spring:message code="label.address"/> : </td>
                    <td><form:textarea path="address" /></td>
                    <td><form:errors path="address" cssClass="error" /></td>
                </tr>
                <tr>
                    <td><spring:message code="label.subscribeNewsletter"/>? : </td>
                    <td><form:checkbox path="receiveNewsletter" /></td>
                    <td><form:errors path="receiveNewsletter" cssClass="error" /></td>
                </tr>
                <tr>
                    <td><spring:message code="label.favouriteWebFrameworks"/> : </td>
                    <td>
                        <form:checkboxes items="${webFrameworkList}" path="favFramework" /> 
                    </td>
                    <td><form:errors path="favFramework" cssClass="error" /></td>
                </tr>
                <tr>
                    <td><spring:message code="label.gender"/> : </td>
                    <td>
                        <form:radiobutton path="sex" value="M"/>Male 
                        <form:radiobutton path="sex" value="F"/>Female 
                    </td>
                    <td><form:errors path="sex" cssClass="error" /></td>
                </tr>
                <tr>
                    <td><spring:message code="label.chooseNumber"/> : </td>
                    <td>
                        <form:radiobuttons path="favNumber" items="${numberList}"  /> 
                    </td>
                    <td><form:errors path="favNumber" cssClass="error" /></td>
                </tr>

                <tr>
                    <td><spring:message code="label.country"/> : </td>
                    <td>
                        <form:select path="country">
                            <form:option value="NONE" label="--- Select ---"/>
                            <form:options items="${countryList}" />
                        </form:select>
                    </td>
                    <td><form:errors path="country" cssClass="error" /></td>
                </tr>

                <tr>
                    <td><spring:message code="label.javaSkills"/> : </td>
                    <td>
                        <form:select path="javaSkills" items="${javaSkillsList}" multiple="true" />
                    </td>
                    <td><form:errors path="javaSkills" cssClass="error" /></td>
                </tr>


                <form:hidden path="secretValue" />

                <tr>
                    <td colspan="3"><input type="submit" /></td>
                </tr>
            </table>
        </form:form>

    </body>
</html>