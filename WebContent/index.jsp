<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Demo</title>
<link href="css/devices.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link href="css/jquery.growl.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/jquery.growl.js"></script>
<script src="js/source.js" /></script>
</head>
<body>
	<div style="width: 100%; text-align: center">
		<div class="marvel-device iphone5s">
			<div class="notch">
				<div class="camera"></div>
				<div class="speaker"></div>
			</div>
			<div class="top-bar"></div>
			<div class="sleep"></div>
			<div class="bottom-bar"></div>
			<div class="volume"></div>
			<div class="overflow">
				<div class="shadow shadow--tr"></div>
				<div class="shadow shadow--tl"></div>
				<div class="shadow shadow--br"></div>
				<div class="shadow shadow--bl"></div>
			</div>
			<div class="inner-shadow"></div>
			<div class="screen">
				<!-- Content goes here -->
				<table style="margin-top: 100px;" width=100%>
					<tr>
						<td align="center">Driver's Interface</td>
					</tr>
					<tr>
						<td><a id="accept" title="Accept Ride"
							href="javascript:void(0)"><img src="img/line-car-icon.png"
								height="60px" width="60px" /></a></td>
					</tr>
					<tr>
						<td>Accept Ride</td>
					</tr>
				</table>
				<div class="modal" style="display: none">
					<div class="center">
						<img alt="" src="img/loader.gif" />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>