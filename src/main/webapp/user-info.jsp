<%@ page
        contentType="text/html;charset=UTF-8"
        pageEncoding="UTF-8"
        isELIgnored="false"
%>

<style>

    .user-box{
        margin-top: 25px;
        padding: 20px;
        background: #fafafa;
        border-radius: 10px;
        border: 1px solid #ddd;
    }

    .user-title{
        color: #1976d2;
        margin-bottom: 15px;
    }

    .user-list{
        list-style: none;
        padding: 0;
    }

    .user-list li{
        padding: 12px;
        margin-bottom: 10px;
        background: white;
        border-radius: 8px;
        border-left: 5px solid #2196F3;
    }

    .label{
        font-weight: bold;
        color: #333;
    }

    .value{
        color: #666;
    }

</style>

<div class="user-box">

    <h2 class="user-title">
        YOUR INFORMATION
    </h2>

    <ul class="user-list">

        <li>
            <span class="label">
                Fullname:
            </span>

            <span class="value">
                ${user.fullname}
            </span>
        </li>

        <li>
            <span class="label">
                Gender:
            </span>

            <span class="value">
                ${user.gender ? 'Male' : 'Female'}
            </span>
        </li>

        <li>
            <span class="label">
                Country:
            </span>

            <span class="value">
                ${user.country}
            </span>
        </li>

    </ul>

</div>