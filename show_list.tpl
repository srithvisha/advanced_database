<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
<link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet" >
</head>
<style>
h1{
    text-align:center;
}
</style>
<style>
table{
    font-family: Impact,Charcoal,sans-serif;
    width: 50%;
    float: right;
}
.w3-block w3-deep-purple w3-center
{
    width:50%;
    margin-right;
}
.w3-table,.w3-table-all
{
    width:50%;
    float:left;
    margin-left:350px;
}
.w3-block{
     width:50%;
    float:left;
    margin-left:350px;
}
</style>
<h1>The list of tasks </h1>
<table class="w3-table w3-bordered w3-border" border="1" align="center">
%for row in rows:
    <tr>
        <td>{{row[0]}}</td>
        <td>
            <a href="/update_item/{{row[0]}}">{{row[1]}}</a>
        </td>
        <td>
        %if row[2] ==0:
            <a href="/set_status/{{row[0]}}/1">{{row[2]}}</a>
        %else:
            <a href="/set_status/{{row[0]}}/0">{{row[2]}}</a>
        %end
        <td>
            <a href="/delete_item/{{row[0]}}">DELETE</a>
        </td>
    </tr>
%end
</table>
<a href="/new_item">New Item...</a>
<hr/>
