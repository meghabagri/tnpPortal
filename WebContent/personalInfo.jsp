<%-- 
    Document   : index
    Created on : 22 Jun, 2017, 4:41:41 PM
    Author     : sakshigupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.stages {
	font-size: 0;
	text-align: justify;
}

.stages:after {
	content: '';
	display: inline-block;
	font-size: 0;
	text-align: justify;
	width: 100%;
}

input[type="radio"] {
	display: none;
}

.stages label {
	background: #ffffff;
	border: solid 5px #c0c0c0;
	border-radius: 50%;
	cursor: pointer;
	display: inline-block;
	font-size: 0;
	font-weight: 700;
	height: 50px;
	line-height: 50px;
	position: relative;
	text-align: center;
	vertical-align: top;
	width: 50px;
	z-index: 1;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.stages label:after {
	content: '\2713';
	color: black;
	display: inline-block;
	font-size: 20px;
}

#one:checked ~ .stages label[for="one"],#two:checked ~ .stages label[for="two"],#three:checked 
	 ~ .stages label[for="three"] {
	border-color: #0cc39f;
}

.stages label.active {
	border-color: purple !important;
}

#one:checked ~ .stages label,#two:checked ~ .stages label[for="one"] ~
	label,#three:checked ~ .stages label[for="two"] ~ label {
	font-size: 2rem;
}

#one:checked ~ .stages label:after,#two:checked ~ .stages label[for="one"] 
	 ~ label:after,#three:checked ~ .stages label[for="two"] ~ label:after,#four:checked 
	 ~ .stages label[for="three"] ~ label:after {
	display: none;
}

.progress>span {
	background: #c0c0c0;
	display: inline-block;
	height: 5px;
	transform: translateY(-2.75em);
	transition: 0.3s;
	width: 1;
}

#two:checked ~ .progress span {
	width: calc(100%/ 2 * 1);
}

#three:checked ~ .progress span {
	width: calc(100%/ 2 * 2);
}

.panels div {
	display: none;
	height: 100%;
}

#one:checked ~ .panels [data-panel="one"],#two:checked ~ .panels [data-panel="two"],#three:checked 
	 ~ .panels [data-panel="three"] {
	display: block;
	height: 100%;
}
/* Custom code for the demo */
body {
	background-color: "red";
	margin: 0;
	padding: 0 2em;
}

a {
	color: #0cc39f;
}

h2,h4 {
	margin-top: 0;
}

.form {
	background: white;
	box-shadow: 0 5px 10px rgba(0, 0, 0, .4);
	margin: 4em;
	height: 625px;
	padding: 2.8125em;
	margin: 0 0 6.25em;
	box-shadow: 0 0 1.25em 0 #888888, 0 0.3125em 0.3125em 0 #888888;
}

.panels div {
	border-top: solid 1px #c0c0c0;
	margin: 1em 0 0;
	padding: 1em 0 0;
	height: 100%;
}

input {
	display: block;
	font-family: "Roboto", sans-serif;
	width: 100%;
	background-color: #E5E5E5;
	border: 0;
	margin: 0 0 0.9375em;
	padding: 0.9375em;
}

button {
	background-color: green;
	border: 0;
	color: red;
	cursor: pointer;
	font-weight: 700;
	margin: 1em 0 0 80em;
	padding: 0.9375em;
}

button:hover {
	opacity: 0.8;
}

.page {
	width: 50%;
	margin: auto;
	height: auto;
}

h1 {
	letter-spacing: 0.0625em;
	color: black;
	text-shadow: 0.125em 0.125em 0.125em;
	text-align: center;
}

.form1 {
	position: relative;
	background: blue;
	width: 80%;
	height: auto;
	padding: 2.8125em;
	margin: 0 auto 6.25em;
	box-shadow: 0 0 1.25em 0 #888888, 0 0.3125em 0.3125em 0 #888888;
}

.form1 input[type=text],select {
	font-family: "Roboto", sans-serif;
	width: 100%;
	background-color: #E5E5E5;
	border: 0;
	margin: 0 0 0.9375em;
	padding: 0.9375em;
}

.form1_item {
	float: left;
	width: 100%;
}

.form1_col1 {
	float: left;
	width: 46%;
	margin-right: 5%;
	clear: both;
}

.form1_col2 {
	float: left;
	width: 48%;
	margin: 0;
}

.divfirst {
	padding: 2.8125em;
	margin: 0 auto 6.25em;
}

body {
	background: #0cc39f;
	font-family: "Roboto", sans-serif;
}
</style>

<script>
	$('.form .stages label').click(
			function() {
				var radioButtons = $('.form input:radio');
				var selectedIndex = radioButtons.index(radioButtons
						.filter(':checked'));
				selectedIndex = selectedIndex + 1;
			});

	$('.form button').click(
			function() {
				var radioButtons = $('.form input:radio');
				var selectedIndex = radioButtons.index(radioButtons
						.filter(':checked'));

				selectedIndex = selectedIndex + 2;

				$(
						'.form input[type="radio"]:nth-of-type('
								+ selectedIndex + ')').prop('checked', true);

				if (selectedIndex == 3) {
					$('button').html('Submit');
				}
			});
</script>
</head>
<body>
	<div class="form">
		<input id="one" type="radio" name="stage" checked="checked" /> <input
			id="two" type="radio" name="stage" /> <input id="three" type="radio"
			name="stage" />


		<div class="stages">
			<label for="one">1</label> <label for="two">2</label> <label
				for="three">3</label>

		</div>


		<span class="progress"><span></span></span>

		<div class="panels">

			<div data-panel="one">

				<h4>
					<center>Personal Information</center>
				</h4>
				<form action="InsertData.jsp" method="post">

					<span class="form1_item"> <input type="text"
						placeholder="Enrollment Number" name="enrollnum" />
					</span> <span class="form1_item form1_col1"> <input type="text"
						placeholder="First Name" name="fname" />
					</span> <span class="form1_item form1_col2"> <input type="text"
						placeholder="Last Name" name="lname" />
					</span> <span class="form1_item form1_col1"> <input type="date"
						placeholder="Date of Birth" name="dob" />
					</span> <span class="form1_item form1_col2"> <select
						name="category">
							<option value="general">General</option>
							<option value="sc">SC</option>
							<option value="st">ST</option>
							<option value="obc">OBC</option>
					</select>
					</span> <span class="form1_item"> <input type="text"
						placeholder="Aadhar Number" name="aadharnum" />
					</span> <span class="form1_item"> <input type="text"
						placeholder="Permanent Address" maxlength="100" name="permaddr" />
					</span> <span class="form1_item"> <input type="text"
						placeholder="Temporary Address" maxlength="100" name="tempaddr" />
					</span> <span class="form1_item form1_col1"> <input type="text"
						minlength="10" maxlength="10" placeholder="Contact" name="contact"
						pattern="[789][0-9]{9}" title="Enter valid contact number"
						required />
					</span> <span class="form1_item form1_col2"> <input type="text"
						minlength="10" maxlength="10" placeholder="Alternate Contact"
						name="altcontact" pattern="[789][0-9]{9}"
						title="Enter valid contact number" />
					</span> <span class="form1_item form1_col1"> <input type="text"
						placeholder="Email ID" name="email" />
					</span> <span class="form1_item form1_col2"> <input type="text"
						placeholder="Alternate Email ID" name="altemail" />
					</span>
			</div>
			<div data-panel="two">

				<h4>Parent Contact Details</h4>

				<span class="form1_item"> <input type="text"
					placeholder="Father's Name" name="fathname" />
				</span> <span class="form1_item form1_col1"> <input type="text"
					placeholder="Father's Occupation" name="fathoccptn" />
				</span> <span class="form1_item form1_col2"> <input type="text"
					placeholder="Father's Contact" name="fathcntct" />
				</span> <span class="form1_item"> <input type="text"
					placeholder="Father's Office Address" name="fathoffaddr" />
				</span> <span class="form1_item"> <input type="text"
					placeholder="Mother's Name" name="mothname" />
				</span> <span class="form1_item form1_col1"> <input type="text"
					placeholder="Mother's Occupation" name="mothoccptn" />
				</span> <span class="form1_item form1_col2"> <input type="text"
					placeholder="Mother's Contact" name="mothcntct" />
				</span> <span class="form1_item"> <input type="text"
					placeholder="Mother's Office Address" name="mothoffaddr" />
				</span>





			</div>
			<div data-panel="three">




				<h4>Class X</h4>

				<span class="form1_item"> <input type="text"
					placeholder="Board" name="xboard" />
				</span> <span class="form1_item form1_col1"> <input type="text"
					placeholder="Percentage" name="xpercentage" />
				</span> <span class="form1_item form1_col2"> <input type="text"
					placeholder="Passing Year" name="xpassyr" />
				</span> <span class="form1_item"> <input type="text"
					placeholder="School Name" name="xschlname" />
				</span>

				<h4>Class XII/Diploma</h4>


				<span class="form1_item form1_col1"> <input type="text"
					placeholder="XII/Diploma" name="xiidiploma">
				</span> <span class="form1_item form1_col2"> <input type="text"
					placeholder="Board" name="xiiboard" />
				</span> <span class="form1_item form1_col1"> <input type="text"
					placeholder="Percentage" name="xiipercentage" />
				</span> <span class="form1_item form1_col2"> <input type="text"
					placeholder="Passing Year" name="xiipassyr" />
				</span> <span class="form1_item"> <input type="text"
					placeholder="School Name" name="xiischlname" />
				</span> <input type="submit" valur="submit ">
			</div>


		</div>



	</div>
	</form>
</body>
</html>
