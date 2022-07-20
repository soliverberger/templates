{if $clan|isset}
	<div class="boxContent">
			<div class="clantstats">
	<div class="clanheader">
		<p>{lang}clan.groups.additional.raiser{/lang}</p>
	</div>
	
	<div class="clandetail">
		<p>{if $clan->getUserProfile()->getUserOption('showClantag') && CLAN_TAG_DISPLAY == 'before'}{include application='clan' file='clantag' clantags=$clan->getUserProfile()->getFormattedUserOption('userClantags')} {/if}<a href="{link controller='User' id=$clan->userID}{/link}" title="{$clan->username}">{$clan->username}</a>{if $clan->getUserProfile()->getUserOption('showClantag') && CLAN_TAG_DISPLAY == 'after'} {include application='clan' file='clantag' clantags=$clan->getUserProfile()->getFormattedUserOption('userClantags')}{/if}</p>
	</div>
	
	{if $clan->checkOption('memberspageEnable') && $clan->checkPermission('canSeeMembers')}
	<div class="clanheader">
		<p>{lang}clan.member.members{/lang}
	</div>
	
	<div class="clandetail">
		<p><a href="{link controller='ClanMembers' application='clan' object=$clan}{/link}" title="{lang}clan.member.members{/lang}">{#$clan->members}</a></p>
	</div>
	{/if}
	
	<div class="clanheader">
	<p>{lang}clan.add.time{/lang}</p>
	</div>
	
	<div class="clandetail">
	<p>{@$clan->time|date}</p>
	</div>
	
	<div class="clanheader">
	<p>{lang}clan.index.edit.time{/lang}
	</div>
	
	{if $clan->lastEditTime != 0}
	<div class="clandetail">
	<p>{@$clan->lastEditTime|date}</p>
	{/if}
	
	</div>
	
</div>
			
{/if}
