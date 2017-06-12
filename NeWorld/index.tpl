
<section class="home-pricing space">
	<div class="container">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 text-center">
				<h2 class="title-head">Select a Plan To Start Your Free Trial</h2>
				<p class="desc">Form early to enterprise, we've got you covered Starts with 14 days free. Annual payment earns you two months free!</p>
			</div>
		</div>
		<div class="empty_space" style="height: 30px"></div>
		<div class="pricing">
			<ul class="nav nav-tabs packages-switcher monthly" role="tablist">
				<li role="presentation" class="active"><a href="#monthly" aria-controls="monthly" role="tab" data-toggle="tab">{$LANG.featuredProduct}</a></li>
				<li role="presentation"><a href="#annyaly" aria-controls="annyaly" role="tab" data-toggle="tab">{$LANG.newDomain} </a></li>
			</ul>
			<ul class="pricing-list">
                {section name=sec1 loop=$hottest}
					{if sec1 < 2}
					<li class="wow sideInLeft">
						{elseif sec1 eq 2}
					<li class="">
						{else}
					<li class="wow slideInRight">
					{/if}
						<div class="package text-center">
							<div class="top">
								<h3 class="package-domain" data-hot="{$hottest[sec1]->extension}" data-new="{$newest[sec1]->extension}">{$hottest[sec1]->extension}</h3>
							</div>
							<div class="info">
								<h4>
								<span class="package-price" data-monthly="{$hottestMoney[sec1]->msetupfee}" data-year="{$newestMoney[sec1]->msetupfee}">
									<span>{$hottestMoney[sec1]->msetupfee}</span>
								</span>
									<small>&yen;</small>
								</h4>
								{*<p><strong>40G</strong> {$LANG.diskSpace}</p>*}
								{*<p><strong>2G</strong> {$LANG.ram}</p>*}
								{*<p><strong>1T</strong> {$LANG.bandwidth}</p>*}
								{*<p><strong>15</strong> IPs</p>*}
							</div>
							<div class="btm">
								<a href="{$WEB_ROOT}/cart.php?a=add&domain=register" class="btn btn-border btn-block">{$LANG.getitnow}</a>
							</div>
						</div>
					</li>
                {/section}

			</ul>
		</div>
	</div>
</section>

<section class="slider-1 space">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-6">
				<h2>这里放一条横幅标语</h2>
				<p>Yep, because like Cell Phone Overage Charges, Bandwidth Overage SUCK even more!</p>
			</div>
		</div>
	</div>
</section>

<section class="home-questions space2x border-top">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 text-center">
				<h2 class="title-head">Questions and answers</h2>
				<p class="desc">Our support team work hard to make your life simplier. Feel free to <a href="{$WEB_ROOT}/contact.php">{$LANG.contacttitle}</a></p>
			</div>
		</div>
		<div class="empty_space" style="height: 30px"></div>
		<div class="row">
			{section name=sec1 loop=$qa}
				<div class="col-sm-6">
					<div class="main wow fadeInLeft">
						<h4 class="title-head">{$qa[sec1]->title}</h4>
						<p>{$qa[sec1]->article}</p>
					</div>
				</div>
			{/section}
		</div>
	</div>
</section>

<section class="slider-2 space2x text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<h2>这里放一条横幅标语</h2>
				<p>Our free calculator will show you in under 10 seconds how much you could be<br/>saving on your monthly hosying costs.</p>
				<a href="#" class="btn btn-success">Calculate Your Savings</a>
			</div>
		</div>
	</div>
</section>
