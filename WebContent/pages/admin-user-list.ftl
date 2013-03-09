<div class="bs-docs-example">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>编号</th>
				<th>用户名</th>
				<th>邮箱</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<#list list as user>
				<tr>
					<td>${user_index + 1}</td>
					<td>${user.userName}</td>
					<td>${user.id?string('#')}</td>
					<td>
						<a href="" onclick="">update</a>
						<a href="javascript:delUser(${user.id?string('#')});">delete</a> 
					</td>
				</tr>
			</#list>
		</tbody>
	</table>
</div>
<div class="clear"></div>
<form class="form-horizontal" id="form">
	<div class="control-group">
		<label class="control-label" for="inputEmail">UserName</label>
		<div class="controls">
			<input type="text" name="userName" placeholder="UserName">
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="inputEmail">Email</label>
		<div class="controls">
			<input type="text" id="inputEmail" name="email" placeholder="Email">
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="inputPassword">Password</label>
		<div class="controls">
			<input type="password" id="inputPassword" name="password" placeholder="Password">
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
			<button type="button" class="btn" onclick="addUser()">Submit</button>
			<button  type="button" class="btn" onclick="">Reset</button>
		</div>
	</div>
</form>