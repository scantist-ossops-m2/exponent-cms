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

{css unique="general-ecom" link="`$smarty.const.PATH_RELATIVE`framework/modules/ecommerce/assets/css/ecom.css" corecss="button,tables"}

{/css}
{css unique="ecom-report2" link="`$asset_path`css/generate-report.css"}

{/css}

<div class="module report generate-report">
    <h1>{'Product Reports'|gettext}</h1>
    {$page->links}
    {form id="batch" controller=report}
        <div class="actions-to-apply">
            {control type="dropdown" name="action" label="Select Action"|gettext items=$action_items}
            {control type="checkbox" name="applytoall" label="Apply to all pages"|gettext class="applytoall" value=1}
            {*<a href="javascript:document.getElementById('batch').submit();" class="button {button_style} exp-ecom-link"><strong><em>{'Apply Batch Action'|gettext}</em></strong></a>*}
            {control type="buttongroup" submit="Apply Batch Action"|gettext}
        </div>
        <div class="exp-ecom-table">
            {$page->table}
        </div>
    {/form}
	{$page->links}
</div>