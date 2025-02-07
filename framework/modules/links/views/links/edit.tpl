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

<div class="module links edit">
    {if $record->id != ""}
    	<h1>{'Edit Information for'|gettext} {$model_name}</h1>
        {$newwin = $record->new_window}
    {else}
    	<h1>{'New'|gettext} {$model_name}</h1>
        {$newwin = $config.opennewwindow}
    {/if}
    {form action=update}
    	{control name=id type=hidden value=$record->id}
        {control type="text" name="title" label="Title"|gettext value=$record->title focus=1}
        {*{control type="text" name="url" label="URL"|gettext value=$record->url}*}
        {control type="text" name="url" label="URL"|gettext value=$record->url}
        {control type="dropdown" name="page_id" label="(or) Site Page"|gettext items=section::levelDropdownControlArray(0,0,array(),true,'view',true,true) value=$section->internal_id description='Select a page to fill in the URL field'|gettext}
        {control type="checkbox" name="new_window" label="Open in New Window"|gettext checked=$newwin value="1"}
        {control type="files" name="image" label="Image"|gettext accept="image/*" value=$record->expFile limit=2 folder=$config.upload_folder}
        {control type="editor" name="body" label="URL Description"|gettext value=$record->body}
        {if $config.usecategories}
            {control type="dropdown" name=expCat label="Category"|gettext frommodel="expCat" where="module='`$model_name`'" orderby="rank" display=title key=id includeblank="Not Categorized"|gettext value=$record->expCat[0]->id}
        {/if}
        {control type="buttongroup" submit="Save Link"|gettext cancel="Cancel"|gettext}
    {/form}
</div>

{script unique="select-page" jquery=1}
{literal}
    $(document).ready(function() {
        $("#page_id").change(function() {
            var page_id = $(this).val();
            if (page_id != 0) {
                $.ajax({
                    url: EXPONENT.PATH_RELATIVE+'index.php.php?controller=navigation&action=getPage&ajax_action=1&json=1&id='+page_id,
                    success: function (o, ioId) {
                        $('#url').val('/'+o.data.sef_name);
                    }
                });
            } else {
                $('#url').val('');
            }
        })
    })
{/literal}
{/script}
