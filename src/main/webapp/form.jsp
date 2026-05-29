<%@ page
        contentType="text/html;charset=UTF-8"
        pageEncoding="UTF-8"
        isELIgnored="false"
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Bài 3 - Form + EL</title>

    <style>

        body{
            font-family: Arial;
            background: #f4f6f9;
            padding: 40px;
        }

        .container{
            width: 600px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0,0,0,.1);
        }

        .title{
            color: #1976d2;
            margin-bottom: 20px;
        }

        label{
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type=text],
        select{
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ddd;
            border-radius: 6px;
        }

        .radio{
            margin-top: 10px;
        }

        button{
            padding: 10px 18px;
            margin-top: 20px;
            margin-right: 10px;
        }

    </style>

</head>

<body>

<div class="container">

    <h2 class="title">
        USER FORM
    </h2>

    <form
            action="${pageContext.request.contextPath}/form/update"
            method="post">

        <label>
            Fullname:
        </label>

        <input
                type="text"
                name="fullname"
                value="${user.fullname}"
        ${editabled ? 'readonly' : ''}
        >

        <label>
            Gender:
        </label>

        <div class="radio">

            <input
                    type="radio"
                    name="gender"
                    value="true"
            ${user.gender ? 'checked' : ''}
            >
            Male

            <br><br>

            <input
                    type="radio"
                    name="gender"
                    value="false"
            ${!user.gender ? 'checked' : ''}
            >
            Female

        </div>

        <label>
            Country:
        </label>

        <select name="country">

            <option
                    value="VN"
            ${user.country eq 'VN' ? 'selected' : ''}
            >
                Việt Nam
            </option>

            <option
                    value="US"
            ${user.country eq 'US' ? 'selected' : ''}
            >
                United States
            </option>

            <option
                    value="CN"
            ${user.country eq 'CN' ? 'selected' : ''}
            >
                China
            </option>

        </select>

        <hr>

        <button
                type="submit"
        ${editabled ? 'disabled' : ''}
        >
            Create
        </button>

        <button type="submit">
            Update
        </button>

    </form>

</div>

</body>
</html>