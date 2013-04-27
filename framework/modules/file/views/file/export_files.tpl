{*
 * Copyright (c) 2004-2013 OIC Group, Inc.
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

{css unique="exportfiles" corecss="forms,tables"}

{/css}

<div class="exporter files-modlist">
	<div class="form_header">
		<h2>{'Export All Uploaded Files'|gettext}</h2>
        <blockquote>{'This will save all files listed within the File Manager.'|gettext}</blockquote>
	</div>
	<form method="post" action="">
		<input type="hidden" name="controller" value="file" />
		<input type="hidden" name="action" value="export_files_process" />
		<table cellspacing="0" cellpadding="2" border="0">
			{if $user->isAdmin()}
			<tr>
				<td>
					<input type="checkbox" name="save_sample" value="1" class="checkbox">
					<strong><label class="label ">{'Save as Sample Content for the'|gettext} '{$smarty.const.DISPLAY_THEME}' {'Theme'|gettext}?</label></strong>
				</td>
			</tr>
			{/if}
			<tr>
				<td valign="top"><strong>{'File Name Template'|gettext}:</strong>
					<input type="text" name="filename" size="20" value="files" />
				</td>
			</tr>
				<td>
					<div style="border-top: 1px solid #CCC;">{'Use __DOMAIN__ for this website\'s domain name and any strftime options for time specification. The extension will be added for you. Any other text will be preserved.'|gettext}<br /></div>
				</td>
			</tr>
			<tr>
				<td>
					<input class="downloadfile awesome {$smarty.const.BTN_SIZE} {$smarty.const.BTN_COLOR}" type="submit" value="{'Export Files'|gettext}" />
				</td>
			</tr>
		</table>
	</form>
</div>