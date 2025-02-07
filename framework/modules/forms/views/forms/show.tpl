{*
 * Copyright (c) 2004-2023 OIC Group, Inc.
 * Written and Designed by James Hunt
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

{if !$error}
    {if $is_email == 1}
        <style type="text/css">
            {$css}
        </style>
    {else}
        {css unique="default-report" corecss="tables,button"}

        {/css}
    {/if}

    <div class="module forms show">
        <div class="module-actions">
        {if !$is_email && ($prev || $next) && (empty($config.pagelinks) || $config.pagelinks == "Top and Bottom" || $config.pagelinks == "Top Only")}
            {clear}
            <span style="float:left">
                {if $prev}
                    {icon img='page_prev.png' action=show forms_id=$f->id id=$prev->id title='Previous Record'|gettext}
                {else}
                    {icon img='page_prev.png' title='Previous Record'|gettext}
                {/if}
            </span>
        {/if}
        {permissions}
            {if $permissions.create}
                {icon class=add action=enterdata forms_id=$f->id text='Add record'|gettext}
            {/if}
            {if $permissions.edit && $record_id}
                {icon class=edit action=enterdata forms_id=$f->id id=$record_id title='Edit this record'|gettext}
            {/if}
            {if $permissions.delete && $record_id}
                {icon class=delete action=delete forms_id=$f->id id=$record_id title='Delete this record'|gettext}
            {/if}
            {if $permissions.viewdata}
                {icon class="view" action=showall id=$f->id text='View Records'|gettext|cat:" (`$count`)" title='View all records'|gettext}
            {/if}
        {/permissions}
        {if !$is_email && ($prev || $next) && (empty($config.pagelinks) || $config.pagelinks == "Top and Bottom" || $config.pagelinks == "Top Only")}
            <span style="float:right">
                {if $next}
                    {icon img='page_next.png' action=show forms_id=$f->id id=$next->id title='Next Record'|gettext}
                {else}
                    {icon img='page_next.png' title='Next Record'|gettext}
                {/if}
            </span>
            {clear}
        {/if}
        </div>
        <{$config.heading_level|default:'h1'}>{$title}</{$config.heading_level|default:'h1'}>
        <div class="item">
        {if !empty($config.report_def)}
            {eval var=$config.report_def}
            {clear}{br}
        {else}
            <table class="exp-skin-table">
{*                <thead>*}
{*                    <tr>*}
{*                        <th colspan="2">*}
{*                            <{$config.item_level|default:'h2'}>{$title}</{$config.item_level|default:'h2'}>*}
{*                        </th>*}
{*                    </tr>*}
{*                </thead>*}
                <tbody>
                    {foreach $fields as $fieldname=>$value}
                        <tr class="{cycle values="even,odd"}">
                            <td>{$captions.$fieldname}</td>
                            <td>
                                {if $fieldname|lower == 'email' && !is_null($value) && stripos($value, '<a ') === false}
                                    <a href="mailto:{$value}">{$value}</a>
                                {elseif $fieldname|lower == 'image' && !empty($fields.$field)}
                                    {$matches = array()}
                                    {$tmp = preg_match_all('~<a(.*?)href="([^"]+)"(.*?)>~', $value, $matches)}
                                    {$filename1 = $matches.2.0}
                                    {if !empty($filename1)}
                                        {$filename2 = str_replace(array(URL_BASE, "//"), '/', $filename1)}
                                    {else}
                                        {$filename2 = $fields.$field}
                                    {/if}
                                    {if strlen(PATH_RELATIVE) > 1}
                                        {$base = str_replace(PATH_RELATIVE, '', BASE)}
                                    {else}
                                        {$base = rtrim(BASE, "\\/")}
                                    {/if}
                                    {$fileinfo = expFile::getImageInfo($base|cat:$filename2)}
                                    {if is_array($fileinfo) && $fileinfo.is_image == 1}
                                        {img src=$filename1 w=64}
                                    {else}
                                        {$value}
                                    {/if}
                                {else}
                                    {$value}
                                {/if}
                            </td>
                        </tr>
                    {foreachelse}
                        <tr><td colspan="2"><p>{message text=$config.no_records_msg|default:"Record Not Found"|gettext}</p></td></tr>
                    {/foreach}
                </tbody>
            </table>
        {/if}
        {if !empty($referrer)}
            <p>{'Referrer'|gettext}: {$referrer}</p>
        {/if}
        </div>
        {if !$is_email && ($prev || $next) && (empty($config.pagelinks) || $config.pagelinks == "Top and Bottom" || $config.pagelinks == "Bottom Only")}
            <div class="module-actions">
                {clear}
                <span style="float:left">
                    {if $prev}
                        {icon img='page_prev.png' action=show forms_id=$f->id id=$prev->id title='Previous Record'|gettext}
                    {else}
                        {icon img='page_prev.png' title='Previous Record'|gettext}
                    {/if}
                </span>
                <span style="float:right">
                    {if $next}
                        {icon img='page_next.png' action=show forms_id=$f->id id=$next->id title='Next Record'|gettext}
                    {else}
                        {icon img='page_next.png' title='Next Record'|gettext}
                    {/if}
                </span>
                {clear}
            </div>
        {/if}
        {if !$is_email}
            {*<a class="{button_style}" href="{$backlink}">{'Back'|gettext}</a>*}
            {icon button=true link=$backlink text='Back'|gettext}
        {/if}
        {if empty($f) && $permissions.configure}
            {permissions}
                <div class="module-actions">
                    <div class="msg-queue notice" style="text-align:center">
                        <p>{'You MUST assign a form to use this module!'|gettext} {icon action="manage" select=true}</p>
                    </div>
                </div>
            {/permissions}
        {/if}
    </div>
{/if}