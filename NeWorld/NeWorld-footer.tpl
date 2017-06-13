</div>
{if $templatefile == 'homepage' || $filename == 'contact' && !$loggedin || $templatefile == 'vps' || $templatefile == 'pricing' || $templatefile == 'features' || $filename == "cart"}
	<footer class="space2x lmfooter">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<a class="navbar-brand" href="#">{$companyname}</a>
					<p style="color:gray;">&copy; {$date_year} {$companyname}. {$LANG.allrightsreserved}</p>
				</div>
				<div class="col-sm-2 hidden-xs col-xs-offset-5">
					{if $languagechangeenabled && count($locales) > 1}
			            <a href="javascript:;" id="languageChooser" class="language" data-toggle="popover">{$LANG.chooselanguage} <span class="caret"></span></a>
			            <div id="languageChooserContent" class="hidden">
			                <ul>
			                    {foreach from=$locales item=locale}
			                        <li><a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a></li>
			                    {/foreach}
			                </ul>
			            </div>
			        {/if}
				</div>
			</div>
		</div>
	</footer>
{/if}


