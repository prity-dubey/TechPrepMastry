<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QuizQuest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
 <html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap');

        .main {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgb(24, 128, 207);
        }

        .container {
            width: 35rem;
            box-shadow: 0px 0px 5px grey;
            display: flex;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            flex-direction: column;
        }

        .col {
            text-align: justify;
            padding: 15px;
            width: 95%;
        }

        #submit {
            width: 100%;
            background-color: rgb(47, 8, 73);
            transition: 0.5s;
            color: white;
            outline: none;
            border: none;
            font-size: 25px;
            display: block;
            padding: 10px;
            cursor: pointer;
        }

        #submit:hover {
            background-color: rgb(34, 6, 53);
        }

        .box {
            box-shadow: 0px -1px 1px grey;
            width: 100%;
        }
    </style>


</head>

<body>
    <section class="main">

        <div class="container">
            <div class="col">
                <h3 id="questionBox">
                    1) Lorem ipsum dolor sit amet, consectetur adipisicing elit Debitis?
                </h3>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="first" value="a" required>
                <label for="first">Testing 1</label>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="second" value="b" required>
                <label for="second">Testing 2</label>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="third" value="c" required>
                <label for="third">Testing 3</label>
            </div>
            <div class="col box">
                <input name="option" type="radio" id="fourth" value="d" required>
                <label for="fourth">Testing 4</label>
            </div>
            <button id="submit">Submit</button>
        </div>

    </section>
    <script src="JavaScript.js"></script>
</body>

</html>



</asp:Content>
