<div class="wrapper">

<header>
	{if $templatefile == 'homepage'}<div class="wave-wrap">{/if}
	    <div class="container">
	    	<nav class="navbar navbar-inverse nav-home">
	            <!-- Brand and toggle get grouped for better mobile display -->
	
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse" aria-expanded="false">
					<label class="ac-gn-menuicon-label">
						<span class="ac-gn-menuicon-bread ac-gn-menuicon-bread-top">
							<span class="ac-gn-menuicon-bread-crust ac-gn-menuicon-bread-crust-top"></span>
						</span>
						<span class="ac-gn-menuicon-bread ac-gn-menuicon-bread-bottom">
							<span class="ac-gn-menuicon-bread-crust ac-gn-menuicon-bread-crust-bottom"></span>
						</span>
					</label>
				</button>

	            <div class="navbar-header">
	                <a class="navbar-brand" href="{$systemurl}"><img src="{$systemurl}templates/NeWorld/assets/img/homeLogo.png"></a>
	            </div><!-- Collect the nav links, forms, and other content for toggling -->
	
	            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse">
	                <ul class="nav navbar-nav navbar-right">
	                    {*<li {if $templatefile == 'features'} class="active"{/if}>*}
	                    	{*<a href="{$systemurl}features.php">{$LANG.features}</a>*}
	                    {*</li>*}
	                    <li {if $templatefile == 'pricing'} class="active"{/if}>
	                    	<a href="{$systemurl}pricing.php">{$LANG.pricing}</a>
	                    </li>
	                    {*<li class="dropdown{if $templatefile == 'vps'} active{/if}">*}
	                        {*<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{$LANG.hosting} <span class="caret"></span></a>*}
	{**}
	                        {*<ul class="dropdown-menu">*}
	                            {*<li><a href="/shadowsocks/"><i class="fa fa-paper-plane"></i> Shadowsocks</a></li>*}
	{**}
	                            {*<li><a href="/sharehosting/"><i class="fa fa-group"></i> Shared Hosting</a></li>*}
	{**}
	                            {*<li><a href="{$systemurl}vps.php"><i class="fa fa-cloud"></i> VPS Hosting</a></li>*}
	{**}
	                            {*<li><a href="/dedicated/"><i class="fa fa-server"></i> Dedicated Hosting</a></li>*}
	                        {*</ul>*}
	                    {*</li>*}
	                    <li {if $templatefile == 'contact'} class="active"{/if}>
	                    	<a href="{$systemurl}contact.php">{$LANG.homecontact}</a>
	                    </li>
					{if $loggedin}
	                    <li>
	                        <a href="{$systemurl}clientarea.php" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{$clientsdetails.lastname}{$clientsdetails.firstname} <span class="caret"></span></a>
	
	                        <ul class="dropdown-menu">
		                        <li>
		                        	<a href="{$systemurl}clientarea.php"><i class="md md-home"></i> {$LANG.clientareatitle}</a>
		                        </li>
		                        <li>
		                        	<a href="{$systemurl}clientarea.php?action=details"><i class="md md-face-unlock"></i> {$LANG.clientareanavdetails}</a>
		                        </li>
				                <li>
				                	<a href="{$systemurl}clientarea.php?action=contacts"><i class="md md-account-box"></i> {$LANG.clientareanavcontacts}</a>
				                </li>
				                <li>
				                	<a href="{$systemurl}clientarea.php?action=changepw"><i class="md md-settings"></i> {$LANG.clientareanavchangepw}</a>
				                </li>
				                {if $condlinks.updatecc}
				                <li>
				                	<a href="{$systemurl}clientarea.php?action=creditcard"><i class="md md-credit-card"></i>{$LANG.navmanagecc}</a>
				                </li>
				                {/if}
								{if $condlinks.addfunds}
								<li>
									<a href="{$systemurl}clientarea.php?action=addfunds"><i class="md md-account-balance-wallet"></i> {$LANG.addfunds}</a>
								</li>
								{/if}
								<li><a href="{$systemurl}logout.php"><i class="md md-settings-power"></i>{$LANG.logouttitle}</a></li>
	                        </ul>
	                    </li>
						<li><a href="{$systemurl}cart.php?a=view" class="btn btn-border"><i class="fa fa-shopping-cart"></i><span id="cartItemCount" class="badge badge-danger">{$cartitemcount}</span></a></li>
					{else}
						<li><a href="{$systemurl}login.php">{$LANG.clientlogin}</a></li>
						<li class="hidden-sm"><a href="{$systemurl}register.php" class="btn btn-border">{$LANG.clientregistertitle}</a></li>
					{/if}
	                </ul>
	            </div><!-- /.navbar-collapse -->
	    	</nav>

	{if $templatefile == 'homepage'}
		<div class="home-slider space3x">
			<div class="col-sm-6 col-md-5">
				<h1 class="wow fadeInDown">.com</h1>
				<h2 class="wow fadeInDown">一个.com，无数种可能</h2>
			</div>
			<div class="col-sm-9 col-md-8">
				<form method="post" action="domainchecker.php">
					<div class="row">
						<div class="col-md-10  col-sm-10">
							<div class="input-group input-group-lg">
								<input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
								<span class="input-group-btn">
									{if $registerdomainenabled}
										<input type="submit" class="btn btn-warning" value="{$LANG.search}" />
									{/if}
									{if $transferdomainenabled}
										<input type="submit" name="transfer" class="btn btn-info" value="{$LANG.domainstransfer}" />
									{/if}
								</span>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="lRight">
				<div class="lpic"></div>
			</div>
		</div>
	{/if}

	    </div><!-- /.container -->
	{if $templatefile == 'homepage'}</div>{/if}
</header>

{if $announcements}
<section class="announcements">
	<div class="container">
		<h2>{$LANG.homeannouncements}</h2>
		<ul>
	    {foreach $announcements as $announcement}
	        {if $announcement@index < 3}
            <li>
            	[{$announcement.rawDate|date_format:"m-d"}] <a href="{if $seofriendlyurls}announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}">{$announcement.title}</a>
            </li>
	        {/if}
	    {/foreach}
		</ul>
	</div>
</section>
{/if}

<div class="contact-window">
	<div id="leftsead">
		<ul>
			<li>
				<a target="_blank" href="tencent://message/?uin=2188298810&Menu=yes"">
					<img src="http://assets.huluwa.cc/fangxin/dist/images/qq2.png" class="hides" style="width: 166px;height: 50px;display: none;">
					<img src="http://assets.huluwa.cc/fangxin/dist/images/right-qq1.png" class="shows" style="width:50px;height:50px;">
				</a>
			</li>
			<li>
				<a id="top_btn" style="display: none">
					<img src="http://assets.huluwa.cc/fangxin/dist/images/right-top1.png" onclick="Util.goTop()" style="width: 50px;height: 50px">
				</a >
			</li>
		</ul>
	</div>
</div>


