
<section class="dedicated space2x">
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>域名</th>
					<th>价格</th>
					<th class="buy"></th>
				</tr>
			</thead>
			<tbody>
				{section name=sec1 loop=$domains}
					<tr>
						<td>{$domains[sec1]->extension}</td>
						<td><h5 class="price"><span class="yen">¥</span>{$domainsMoney[sec1]->msetupfee}<small>／年</small></h5></td>
						<td><a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="btn btn-success">立即购买</a></td>
					</tr>
				{/section}
		    </tbody>
		</table>	
	</div>
</section>