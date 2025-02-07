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

    {$myloc=serialize($__loc)}
	<table id="calendar" class="table" summary="{$moduletitle|default:'Calendar'|gettext}">
        <div class="caption">
            <span class="d-none d-sm-inline">&laquo;</span>&#160;
            <a class="evnav module-actions" href="{link action=eventsCalendar time=$prevmonth3}" rel="{$prevmonth3}" title="{$prevmonth3|format_date:"%B %Y"}">{$prevmonth3|format_date:"%b"}</a><span class="d-none d-sm-inline">&#160;</span>&#160;&laquo;&#160;
            <a class="evnav module-actions" href="{link action=eventsCalendar time=$prevmonth2}" rel="{$prevmonth2}" title="{$prevmonth2|format_date:"%B %Y"}">{$prevmonth2|format_date:"%b"}</a><span class="d-none d-sm-inline">&#160;</span>&#160;&laquo;&#160;
            <a class="evnav module-actions" href="{link action=eventsCalendar time=$prevmonth}" rel="{$prevmonth}" title="{$prevmonth|format_date:"%B %Y"}">{$prevmonth|format_date:"%b"}</a><span class="d-none d-sm-inline">&#160;</span>&#160;&laquo;&#160;<span class="d-none d-sm-inline">&#160;&#160;&#160;&#160;</span>
            <strong><span class="d-none d-sm-inline">{$time|format_date:"%B %Y"}</span><span class="d-inline d-sm-none">{$time|format_date:"%b %Y"}</span></strong><span class="d-none d-sm-inline">&#160;</span>&#160;{printer_friendly_link view='showall' text=''}{export_pdf_link view='showall' text=''}<span class="d-none d-sm-inline">&#160;&#160;&#160;</span>&#160;&raquo;<span class="d-none d-sm-inline">&#160;&#160;</span>
            <input type='hidden' id='month{$__loc->src|replace:'@':'_'}' value="{$time|format_date:"%Y%m%d"}"/>
            <a class="evnav module-actions" href="{link action=eventsCalendar time=$nextmonth}" rel="{$nextmonth}" title="{$nextmonth|format_date:"%B %Y"}">{$nextmonth|format_date:"%b"}</a><span class="d-none d-sm-inline">&#160;</span>&#160;&raquo;&#160;
            <a class="evnav module-actions" href="{link action=eventsCalendar time=$nextmonth2}" rel="{$nextmonth2}" title="{$nextmonth2|format_date:"%B %Y"}">{$nextmonth2|format_date:"%b"}</a><span class="d-none d-sm-inline">&#160;</span>&#160;&raquo;&#160;
            <a class="evnav module-actions" href="{link action=eventsCalendar time=$nextmonth3}" rel="{$nextmonth3}" title="{$nextmonth3|format_date:"%B %Y"}">{$nextmonth3|format_date:"%b"}</a>&#160;<span class="d-none d-sm-inline">&#160;&raquo;</span>
        </div>
		<tr class="daysoftheweek">
            {if $config.show_weeks}<th></th>{/if}
			{if $smarty.const.DISPLAY_START_OF_WEEK == 0}
            <th scope="col" abbr="{$daynames.med.0}" title="{$daynames.long.0}"><span class="d-none d-sm-inline">{$daynames.long.0}</span><span class="d-inline d-sm-none">{$daynames.med.0}</span></th>
            {/if}
            <th scope="col" abbr="{$daynames.med.1}" title="{$daynames.long.1}"><span class="d-none d-sm-inline">{$daynames.long.1}</span><span class="d-inline d-sm-none">{$daynames.med.1}</span></th>
            <th scope="col" abbr="{$daynames.med.2}" title="{$daynames.long.2}"><span class="d-none d-sm-inline">{$daynames.long.2}</span><span class="d-inline d-sm-none">{$daynames.med.2}</span></th>
            <th scope="col" abbr="{$daynames.med.3}" title="{$daynames.long.3}"><span class="d-none d-sm-inline">{$daynames.long.3}</span><span class="d-inline d-sm-none">{$daynames.med.3}</span></th>
            <th scope="col" abbr="{$daynames.med.4}" title="{$daynames.long.4}"><span class="d-none d-sm-inline">{$daynames.long.4}</span><span class="d-inline d-sm-none">{$daynames.med.4}</span></th>
            <th scope="col" abbr="{$daynames.med.5}" title="{$daynames.long.5}"><span class="d-none d-sm-inline">{$daynames.long.5}</span><span class="d-inline d-sm-none">{$daynames.med.5}</span></th>
            <th scope="col" abbr="{$daynames.med.6}" title="{$daynames.long.6}"><span class="d-none d-sm-inline">{$daynames.long.6}</span><span class="d-inline d-sm-none">{$daynames.med.6}</span></th>
            {if $smarty.const.DISPLAY_START_OF_WEEK != 0}
            <th scope="col" abbr="{$daynames.med.0}" title="{$daynames.long.0}"><span class="d-none d-sm-inline">{$daynames.long.0}</span><span class="d-inline d-sm-none">{$daynames.med.0}</span></th>
			{/if}
		</tr>
        {$dayts=$now}
        {$dst=false}
		{foreach from=$monthly item=week key=weeknum}
            {*{$moredata=0}*}
			{*{foreach name=w from=$week key=day item=events}*}
                {*{$number=$counts[$weeknum][$day]}*}
                {*{if $number > -1}{$moredata=1}{/if}*}
			{*{/foreach}*}
			{*{if $moredata == 1}*}
                <tr class="week{if $currentweek == $weeknum} currentweek{/if}">
                    {if $config.show_weeks}
                        <td class="week{if $currentweek == $weeknum} currentweek{/if}">{$weeknum}</td>
                    {/if}
                    {foreach name=w from=$week key=day item=items}
                        {$number=$counts[$weeknum][$day]}
                        <td {if $dayts == $today}class="today"{elseif $number == -1}class="notinmonth"{else}class="oneday"{/if}>
                            {if $number > -1}
                                {*{if $number == 0}*}
                                    <span class="number{if $dayts == $today} today{/if}">
                                        {$day}
                                    </span>
                                {*{else}*}
                                    {*<a class="number" href="{link action=showall view=showall_Day time=$dayts}" title="{$dayts|format_date:'%A, %B %e, %Y'}">{$day}</a>*}
                                {*{/if}*}
                            {/if}
                            {foreach name=e from=$items item=item}
                                <div class="calevent{if $dayts == $today} today{/if}">
                                    {if $item->is_allday}
                                        {$title = 'All Day'|gettext}
                                    {elseif $item->eventstart != $item->eventend}
                                        {$title = $item->eventstart|format_date:$smarty.const.DISPLAY_TIME_FORMAT}
                                        {$title = $title|cat:' '}
                                        {$title = $title|cat:'to'|gettext}
                                        {$title = $title|cat:' '}
                                        {$title = $title|cat:($item->eventend|format_date:$smarty.const.DISPLAY_TIME_FORMAT)}
                                    {else}
                                        {$title = $item->eventstart|format_date:$smarty.const.DISPLAY_TIME_FORMAT}
                                    {/if}
                                    {$title = $title|cat:'-'|cat:$item->body|summarize:"html":"para"}
                                    <a href="{link controller=eventregistration action=show title=$item->sef_url}" {if $config.lightbox}class="calpopevent" id="{$item->sef_url}"{/if}
                                        title="{$title}">
                                        {if $item->expFile.mainimage[0]->url != ""}
                                            <div class="image">
                                                {img file_id=$item->expFile.mainimage[0]->id alt=$item->image_alt_tag|default:"Image of `$item->title`" title=$title w=92 class="img-responsive"}
                                                {clear}
                                            </div>
                                        {/if}
                                        {$item->title}
                                    </a>
                                    {permissions}
                                        <div class="item-actions">
                                            {if $permissions.edit || ($permissions.create && $item->poster == $user->id)}
                                                {icon img="edit.png" action=edit record=$item title="Edit this Event"|gettext}
                                                {icon img="copy.png" action=copyProduct record=$item title="Copy this Event"|gettext}
                                            {/if}
                                            {if $permissions.delete || ($permissions.create && $item->poster == $user->id)}
                                                {icon img="delete.png" action=delete record=$item title="Delete this Event"|gettext}
                                            {/if}
                                        </div>
                                    {/permissions}
                                </div>
                            {/foreach}
                            {if $number != -1}{$dayts=$dayts+86400}
                                {if !$dst}
                                    {if (date('I',$now) && !date('I',$dayts))}
                                        {$dayts=$dayts+3600}
                                        {$dst=true}
                                    {elseif (!date('I',$now) && date('I',$dayts))}
                                        {$dayts=$dayts-3600}
                                        {$dst=true}
                                    {/if}
                                {/if}
                            {/if}
                        </td>
                    {/foreach}
                </tr>
			{*{/if}*}
		{/foreach}
	</table>

{if $config.lightbox}
{script unique="shadowbox" jquery='jquery.colorbox'}
{literal}
    $('.events_calendar.events a.calpopevent').click(function(e) {
        target = e.target;
        $.colorbox({
            href: EXPONENT.PATH_RELATIVE+"index.php?controller=eventregistration&action=show&ajax_action=1&title="+target.id,
            title: target.text + ' - ' + '{/literal}{'Event'|gettext}{literal}',
            maxWidth: "100%",
            close:'<i class="fas fa-fw fa-close" aria-label="close modal"></i>',
            previous:'<i class="fas fa-fw fa-chevron-left" aria-label="previous photo"></i>',
            next:'<i class="fas fa-fw fa-chevron-right" aria-label="next photo"></i>',
        });
        e.preventDefault();
    });
{/literal}
{/script}
{/if}