{*
 * Copyright (c) 2004-2023 OIC Group, Inc.
 *
 * This file is part of Exponent
 *
 * Exponent is free software; you can redistribute
 * it and/or modify it under the terms of the GNU
 * General Public License as published by the Free
 * Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * GPL: http://www.gnu.org/licenses/gpl.txt
 *
 *}

<div class="common userpermissions">
	<div class="form_header">
		<div class="info-header">
			<div class="related-actions">
				{help text="Get Help with"|gettext|cat:" "|cat:("Managing User Permissions"|gettext) module="manage-user-permissions"}
			</div>
        	<h2>{'Assign User Permissions for this'|gettext} {$title}</h2>
            <blockquote>{'This form allows you to assign permissions to a specific user.'|gettext}</blockquote>
		</div>
	</div>
    {*{if expSession::get('framework') == 'bootstrap' || expSession::get('framework') == 'bootstrap3'}*}
        {*{exp_include file="_permissions.bootstrap.tpl"}*}
    {*{else}*}
        {*{exp_include file="_permissions.tpl"}*}
    {*{/if}*}
    {exp_include file="_permissions.tpl"}
</div>
