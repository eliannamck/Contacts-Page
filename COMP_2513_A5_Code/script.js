$(document).ready(function() {
	getContactsData();
});

/* getContactsData() GET's a JSON array from service.php,
 * retrieving the JSON array as an object.
 * If JSON object is successfully found, it is then parsed through
 * a loop using .each then sending the data to the index.html file.
 * If JSON object is not successfully found, an error alert is sent.
 */
 function getContactsData() {

 	$("#output").html("");

 	$.ajax({
 		url: "service.php",
 		type: "GET",
 		dataType: "json",
 		success: function(json){

 			var html = "<table>";
 			html += "<tr>";
 			html += "<th>ID</th>";
 			html += "<th>First Name</th>";
 			html += "<th>Last Name</th>";
 			html += "<th>Email</th>";
 			html += "<th>Phone</th>";
 			html += "<th>Street Number</th>";
 			html += "<th>Street Name</th>";
 			html += "<th>City</th>";
 			html += "<th>Province</th>";
 			html += "<th>Postal Code</th>";
 			html += "<th>Added</th>";
 			html += "</tr>";
 			$.each(json.data, function(index, value) {
 				html += "<tr><td>" + value.id + "</td>";
 				html += "<td>" + value.first_name + "</td>";
 				html += "<td>" + value.last_name + "</td>";
 				html += "<td>" + value.email + "</td>";
 				html += "<td>" + value.phone + "</td>";
 				html += "<td>" + value.street_num + "</td>";
 				html += "<td>" + value.street_name + "</td>";
 				html += "<td>" + value.city + "</td>";
 				html += "<td>" + value.province + "</td>";
 				html += "<td>" + value.postal_code + "</td>";
 				html += "<td>" + value.added + "</td></tr>";
			});
			html += "</table>";

			$("#output").html(html);

 		},
 		error: function() {
 			alert("Error: Issue occurred while processing JSON data.");
 		}
 	})
 }