$(function() {
	$('#accept').click(function(event) {
		poll();
	});

	function poll() {
		$.ajax({
			url : 'action.jsp',
			type : 'GET',
			async : true,
			crossDomain : true,
			headers : {
				'content-type' : 'application/json',
				'cache-control' : 'no-cache'
			},
			beforeSend : function() {
				$('.modal').show();
			},
			complete : function() {
				$('.modal').hide();
			},
			success : function(data) {
				if (data == null) {
					$.alert('No Data Received!');
				} else {
					var driverIdTemp = 'OLA9089';
					var driverDetails = {};
					$.each(data, function(index, element) {
						if (data[index].driverId === driverIdTemp) {
							driverDetails = data[index];
						}
					});

					if (driverDetails) {
						if (parseInt(driverDetails.bacValue) >= 5) {
							$.growl.error({ title: 'Ride Rejected', size:'small', message: 'BAC Value is '+driverDetails.bacValue, location: 'bc' });
						} else {
							$.growl.notice({ title: 'Ride Accepted', size:'small', message: 'BAC Value is '+driverDetails.bacValue, location: 'bc' });
						}
					}
				}
			},
			dataType : 'json'
		//complete : poll,
		//timeout : 1000000
		});

	}

});

$.extend({
	alert : function(message, title) {
		$('<div></div>').dialog({
			buttons : {
				'Ok' : function() {
					$(this).dialog('close');
				}
			},
			close : function(event, ui) {
				$(this).remove();
			},
			resizable : false,
			title : title,
			modal : true
		}).text(message);
	}
});
