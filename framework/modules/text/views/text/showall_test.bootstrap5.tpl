{*
 * Copyright (c) 2004-2021 OIC Group, Inc.
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

{css unique="bootstrap-test"}
{literal}
    /*body {*/
    /*    padding-top: 120px*/
    /*}*/

    pre {
        background: #f7f7f9
    }

    @media (min-width: 768px) {
        body > .navbar-transparent {
            box-shadow: none
        }

        body > .navbar-transparent .navbar-nav > .open > a {
            box-shadow: none
        }
    }

    .navbar .fa, .navbar .fab {
        margin-right: .25rem;
        font-size: 1rem
    }

    #home .navbar, #help .navbar {
        background: #375ee3;
        background: linear-gradient(145deg, #375ee3 0%, #6543e0 80%);
        transition: box-shadow 200ms ease-in
    }

    #home .navbar-brand .nav-link, #help .navbar-brand .nav-link {
        display: inline-block;
        margin-right: -30px
    }

    #home {
        padding-top: 0
    }

    #home .btn {
        padding: .5rem .9rem
    }

    .bs-docs-section {
        margin-top: 4em
    }

    .bs-docs-section .page-header h1 {
        padding: 2rem 0;
        font-size: 3rem
    }

    .dropdown-menu.show[aria-labelledby="themes"] {
        display: -ms-flexbox;
        display: flex;
        width: 420px;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap
    }

    .dropdown-menu.show[aria-labelledby="themes"] .dropdown-item {
        width: 33.333%
    }

    .dropdown-menu.show[aria-labelledby="themes"] .dropdown-item:first-child {
        width: 100%
    }

    .bs-component {
        position: relative
    }

    .bs-component + .bs-component {
        margin-top: 1rem
    }

    .bs-component .card {
        margin-bottom: 1rem
    }

    .bs-component .modal {
        position: relative;
        top: auto;
        right: auto;
        left: auto;
        bottom: auto;
        z-index: 1;
        display: block
    }

    .bs-component .modal-dialog {
        width: 90%
    }

    .bs-component .popover {
        position: relative;
        display: inline-block;
        width: 220px;
        margin: 20px
    }

    .source-button {
        display: none;
        position: absolute;
        top: 0;
        right: 0;
        z-index: 100;
        font-weight: 700
    }

    .source-button:hover {
        cursor: pointer
    }

    .bs-component:hover .source-button {
        display: block
    }

    #source-modal pre {
        max-height: calc(100vh - 11rem)
    }

    .nav-tabs {
        margin-bottom: 15px
    }

    .progress {
        margin-bottom: 10px
    }

    #footer {
        margin: 5em 0
    }

    #footer li {
        float: left;
        margin-right: 1.5em;
        margin-bottom: 1.5em
    }

    #footer p {
        clear: left;
        margin-bottom: 0
    }

    .splash {
        position: relative;
        padding: 12em 0 6em;
        background-color: #375ee3;
        background-image: url("../img/splash.svg"), linear-gradient(145deg, #375ee3 0%, #6543e0 80%);
        background-size: cover;
        background-repeat: no-repeat;
        color: #fff;
        text-align: center
    }

    .splash .logo {
        width: 160px
    }

    .splash h1 {
        font-size: 3em;
        color: #fff
    }

    .splash #social {
        margin: 2em 0 3em
    }

    .splash .alert {
        margin: 2em 0;
        border: none
    }

    .splash .sponsor a {
        color: #fff
    }

    .section-tout {
        padding: 6em 0 1em;
        border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        background-color: #eaf1f1;
        text-align: center
    }

    .section-tout .icon {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-pack: center;
        justify-content: center;
        -ms-flex-align: center;
        align-items: center;
        width: 80px;
        height: 80px;
        margin: 0 auto 1rem;
        background: #375ee3;
        background: linear-gradient(145deg, #375ee3 0%, #6543e0 80%);
        border-radius: 50%;
        font-size: 2rem;
        color: rgba(255, 255, 255, 0.9)
    }

    .section-tout p {
        margin-bottom: 5em
    }

    .section-preview {
        padding: 4em 0
    }

    .section-preview .preview {
        margin-bottom: 4em;
        background-color: #eaf1f1
    }

    .section-preview .preview .image {
        position: relative
    }

    .section-preview .preview .image img {
        width: 100%;
        height: auto
    }

    .section-preview .preview .options {
        padding: 2em;
        border-top: 1px solid rgba(0, 0, 0, 0.125);
        text-align: center
    }

    .section-preview .preview .options p {
        margin-bottom: 2em
    }

    .section-preview .dropdown-menu {
        text-align: left
    }

    .section-preview .lead {
        margin-bottom: 2em
    }

    .sponsor a {
        text-decoration: none
    }

    .sponsor #carbonads {
        max-width: 240px;
        margin: 0 auto
    }

    .sponsor .carbon-text {
        display: block;
        margin-top: 1em;
        font-size: 12px
    }

    .sponsor .carbon-poweredby {
        float: right;
        margin-top: 1em;
        font-size: 10px
    }

    @media (max-width: 767px) {
        .splash {
            padding-top: 8em
        }

        .splash .logo {
            width: 100px
        }

        .splash h1 {
            font-size: 2em
        }

        #banner {
            margin-bottom: 2em;
            text-align: center
        }
    }

    @media (max-width: 991px) {
        .navbar .fa {
        display: none
        }
    }

    @media (min-width: 992px) {
        .navbar-transparent {
        background: none !important;
        box-shadow: none
        }
    }
    input[type="radio"].form-check-input,
    input[type="checkbox"].form-check-input {
    	margin-left: -1.5em;
    }
    .form-switch input[type="checkbox"].form-check-input {
        margin-left: -2.5em;
    }

{/literal}
{/css}
{edebug var=$items}
<div class="module text showall">

    {if $moduletitle && !($config.hidemoduletitle xor $smarty.const.INVERT_HIDE_TITLE)}
    <{$config.heading_level|default:'h1'}>{$moduletitle}</{$config.heading_level|default:'h1'}>{/if}
{permissions}
    <div class="module-actions">
        {if $permissions.create}
            {icon class=add action=edit rank=1 text="Add text at the top"|gettext}
        {/if}
        {if $permissions.manage}
            {ddrerank items=$items model="text" label="Text Items"|gettext}
        {/if}
    </div>
{/permissions}
{if $config.moduledescription != ""}
    {$config.moduledescription}
{/if}
{$myloc=serialize($__loc)}

{foreach from=$items item=item name=items}
<div class="item{if !$item->approved && $smarty.const.ENABLE_WORKFLOW} unapproved{/if}">
    {if $item->title}<{$config.item_level|default:'h2'}>{$item->title}</{$config.item_level|default:'h2'}>{/if}
    {permissions}
        <div class="item-actions">
            {if $permissions.edit || ($permissions.create && $item->poster == $user->id)}
                {if $item->revision_id > 1 && $smarty.const.ENABLE_WORKFLOW}<span class="revisionnum approval"
                                                                                  title="{'Viewing Revision #'|gettext}{$item->revision_id}">{$item->revision_id}</span>{/if}
                {if $myloc != $item->location_data}
                    {if $permissions.manage}
                        {icon action=merge id=$item->id title="Merge Aggregated Content"|gettext}
                    {else}
                        {icon img='arrow_merge.png' title="Merged Content"|gettext}
                    {/if}
                {/if}
                {icon action=edit record=$item}
            {/if}
            {if $permissions.delete || ($permissions.create && $item->poster == $user->id)}
                {icon action=delete record=$item}
            {/if}
            {if !$item->approved && $smarty.const.ENABLE_WORKFLOW && $permissions.approve && ($permissions.edit || ($permissions.create && $item->poster == $user->id))}
                {icon action=approve record=$item}
            {/if}
        </div>
    {/permissions}
    <div class="bodycopy">
        {if $config.ffloat != "Below"}
            {filedisplayer view="`$config.filedisplay`" files=$item->expFile record=$item}
        {/if}
        {$item->body}
        {if $config.ffloat == "Below"}
            {filedisplayer view="`$config.filedisplay`" files=$item->expFile record=$item}
        {/if}
    </div>
    </div>
    {clear}
    {permissions}
        <div class="module-actions">
            {if $permissions.create}
                {icon class=add action=edit rank=$item->rank+1 text="Add more text here"|gettext}
            {/if}
        </div>
    {/permissions}
{/foreach}
</div>

<div class="container">

    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-8 col-md-7 col-sm-6">
                <h1>Bootstrap 5 Samples</h1>
                <p class="lead">To Test Current Theme Styles</p>
            </div>
        </div>
    </div>

    <!-- Navbar
    ================================================== -->
    <div class="bs-docs-section clearfix">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="navbars">Navbars</h1>
                </div>

                <div class="bs-component">
                    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#">Navbar</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarColor01"
                                    aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarColor01">
                                <ul class="navbar-nav me-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">Home
                                            <span class="visually-hidden">(current)</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Features</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Pricing</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
                                           role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </li>
                                </ul>
                                <form class="d-flex">
                                    <input class="form-control me-sm-2" type="text" placeholder="Search">
                                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    </nav>
                </div>

                <div class="bs-component">
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#">Navbar</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarColor02"
                                    aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarColor02">
                                <ul class="navbar-nav me-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">Home
                                            <span class="visually-hidden">(current)</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Features</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Pricing</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
                                           role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </li>
                                </ul>
                                <form class="d-flex">
                                    <input class="form-control me-sm-2" type="text" placeholder="Search">
                                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    </nav>
                </div>

                <div class="bs-component">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#">Navbar</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarColor03"
                                    aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarColor03">
                                <ul class="navbar-nav me-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">Home
                                            <span class="visually-hidden">(current)</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Features</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Pricing</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
                                           role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Separated link</a>
                                        </div>
                                    </li>
                                </ul>
                                <form class="d-flex">
                                    <input class="form-control me-sm-2" type="text" placeholder="Search">
                                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                    </nav>
                </div>

            </div>
        </div>
    </div>


    <!-- Buttons
    ================================================== -->
    <div class="bs-docs-section">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 id="buttons">Buttons</h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-7">

                <p class="bs-component">
                    <button type="button" class="btn btn-primary">Primary</button>
                    <button type="button" class="btn btn-secondary">Secondary</button>
                    <button type="button" class="btn btn-success">Success</button>
                    <button type="button" class="btn btn-info">Info</button>
                    <button type="button" class="btn btn-warning">Warning</button>
                    <button type="button" class="btn btn-danger">Danger</button>
                    <button type="button" class="btn btn-link">Link</button>
                </p>

                <p class="bs-component">
                    <button type="button" class="btn btn-primary disabled">Primary</button>
                    <button type="button" class="btn btn-secondary disabled">Secondary</button>
                    <button type="button" class="btn btn-success disabled">Success</button>
                    <button type="button" class="btn btn-info disabled">Info</button>
                    <button type="button" class="btn btn-warning disabled">Warning</button>
                    <button type="button" class="btn btn-danger disabled">Danger</button>
                    <button type="button" class="btn btn-link disabled">Link</button>
                </p>

                <p class="bs-component">
                    <button type="button" class="btn btn-outline-primary">Primary</button>
                    <button type="button" class="btn btn-outline-secondary">Secondary</button>
                    <button type="button" class="btn btn-outline-success">Success</button>
                    <button type="button" class="btn btn-outline-info">Info</button>
                    <button type="button" class="btn btn-outline-warning">Warning</button>
                    <button type="button" class="btn btn-outline-danger">Danger</button>
                </p>

                <div class="bs-component">
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-primary">Primary</button>
                        <div class="btn-group" role="group">
                            <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                <a class="dropdown-item" href="#">Dropdown link</a>
                                <a class="dropdown-item" href="#">Dropdown link</a>
                            </div>
                        </div>
                    </div>

                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-success">Success</button>
                        <div class="btn-group" role="group">
                            <button id="btnGroupDrop2" type="button" class="btn btn-success dropdown-toggle"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                            <div class="dropdown-menu" aria-labelledby="btnGroupDrop2">
                                <a class="dropdown-item" href="#">Dropdown link</a>
                                <a class="dropdown-item" href="#">Dropdown link</a>
                            </div>
                        </div>
                    </div>

                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-info">Info</button>
                        <div class="btn-group" role="group">
                            <button id="btnGroupDrop3" type="button" class="btn btn-info dropdown-toggle"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                            <div class="dropdown-menu" aria-labelledby="btnGroupDrop3">
                                <a class="dropdown-item" href="#">Dropdown link</a>
                                <a class="dropdown-item" href="#">Dropdown link</a>
                            </div>
                        </div>
                    </div>

                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <button type="button" class="btn btn-danger">Danger</button>
                        <div class="btn-group" role="group">
                            <button id="btnGroupDrop4" type="button" class="btn btn-danger dropdown-toggle"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                            <div class="dropdown-menu" aria-labelledby="btnGroupDrop4">
                                <a class="dropdown-item" href="#">Dropdown link</a>
                                <a class="dropdown-item" href="#">Dropdown link</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bs-component">
                    <button type="button" class="btn btn-primary btn-lg">Large button</button>
                    <button type="button" class="btn btn-primary">Default button</button>
                    <button type="button" class="btn btn-primary btn-sm">Small button</button>
                </div>

            </div>
            <div class="col-lg-5">
                <div class="bs-component">
                    <div class="d-grid gap-2">
                        <button class="btn btn-lg btn-primary" type="button">Block button</button>
                        <button class="btn btn-lg btn-primary" type="button">Block button</button>
                    </div>
                </div>

                <div class="bs-component mb-3">
                    <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                        <input type="checkbox" class="btn-check" id="btncheck1" checked autocomplete="off">
                        <label class="btn btn-primary" for="btncheck1">Checkbox 1</label>
                        <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
                        <label class="btn btn-primary" for="btncheck2">Checkbox 2</label>
                        <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
                        <label class="btn btn-primary" for="btncheck3">Checkbox 3</label>
                    </div>
                </div>

                <div class="bs-component mb-3">
                    <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                        <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="btnradio1">Radio 1</label>
                        <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="btnradio2">Radio 2</label>
                        <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" checked>
                        <label class="btn btn-outline-primary" for="btnradio3">Radio 3</label>
                    </div>
                </div>

                <div class="bs-component">
                    <div class="btn-group-vertical">
                        <button type="button" class="btn btn-primary">Button</button>
                        <button type="button" class="btn btn-primary">Button</button>
                        <button type="button" class="btn btn-primary">Button</button>
                        <button type="button" class="btn btn-primary">Button</button>
                        <button type="button" class="btn btn-primary">Button</button>
                        <button type="button" class="btn btn-primary">Button</button>
                    </div>
                </div>

                <div class="bs-component mb-3">
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-secondary">Left</button>
                        <button type="button" class="btn btn-secondary">Middle</button>
                        <button type="button" class="btn btn-secondary">Right</button>
                    </div>
                </div>

                <div class="bs-component mb-3">
                    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group me-2" role="group" aria-label="First group">
                            <button type="button" class="btn btn-secondary">1</button>
                            <button type="button" class="btn btn-secondary">2</button>
                            <button type="button" class="btn btn-secondary">3</button>
                            <button type="button" class="btn btn-secondary">4</button>
                        </div>
                        <div class="btn-group me-2" role="group" aria-label="Second group">
                            <button type="button" class="btn btn-secondary">5</button>
                            <button type="button" class="btn btn-secondary">6</button>
                            <button type="button" class="btn btn-secondary">7</button>
                        </div>
                        <div class="btn-group" role="group" aria-label="Third group">
                            <button type="button" class="btn btn-secondary">8</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Typography
    ================================================== -->
    <div class="bs-docs-section">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="typography">Typography</h1>
                </div>
            </div>
        </div>

        <!-- Headings -->

        <div class="row">
            <div class="col-lg-4">
                <div class="bs-component">
                    <h1>Heading 1</h1>
                    <h2>Heading 2</h2>
                    <h3>Heading 3</h3>
                    <h4>Heading 4</h4>
                    <h5>Heading 5</h5>
                    <h6>Heading 6</h6>
                    <h3>
                        Heading
                        <small class="text-muted">with muted text</small>
                    </h3>
                    <p class="lead">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <h2>Example body text</h2>
                    <p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque
                        penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh
                        ultricies vehicula.</p>
                    <p><small>This line of text is meant to be treated as fine print.</small></p>
                    <p>The following is <strong>rendered as bold text</strong>.</p>
                    <p>The following is <em>rendered as italicized text</em>.</p>
                    <p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
                </div>

            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <h2>Emphasis classes</h2>
                    <p class="text-muted">Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.</p>
                    <p class="text-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p class="text-secondary">Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
                    <p class="text-warning">Etiam porta sem malesuada magna mollis euismod.</p>
                    <p class="text-danger">Donec ullamcorper nulla non metus auctor fringilla.</p>
                    <p class="text-success">Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                    <p class="text-info">Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
                </div>

            </div>
        </div>

        <!-- Blockquotes -->

        <div class="row">
            <div class="col-lg-12">
                <h2 id="type-blockquotes">Blockquotes</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="bs-component">
                    <figure>
                        <blockquote class="blockquote">
                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                erat a
                                ante.</p>
                        </blockquote>
                        <figcaption class="blockquote-footer">Someone famous in <cite title="Source Title">Source
                                Title</cite></figcaption>
                    </figure>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <figure class="text-center">
                        <blockquote class="blockquote">
                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                erat a
                                ante.</p>
                        </blockquote>
                        <figcaption class="blockquote-footer">Someone famous in <cite title="Source Title">Source
                                Title</cite></figcaption>
                    </figure>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <figure class="text-end">
                        <blockquote class="blockquote">
                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                erat a
                                ante.</p>
                        </blockquote>
                        <figcaption class="blockquote-footer">Someone famous in <cite title="Source Title">Source
                                Title</cite></figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </div>

    <!-- Tables
    ================================================== -->
    <div class="bs-docs-section">

        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="tables">Tables</h1>
                </div>

                <div class="bs-component">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">Type</th>
                            <th scope="col">Column heading</th>
                            <th scope="col">Column heading</th>
                            <th scope="col">Column heading</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="table-active">
                            <th scope="row">Active</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr>
                            <th scope="row">Default</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-primary">
                            <th scope="row">Primary</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-secondary">
                            <th scope="row">Secondary</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-success">
                            <th scope="row">Success</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-danger">
                            <th scope="row">Danger</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-warning">
                            <th scope="row">Warning</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-info">
                            <th scope="row">Info</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-light">
                            <th scope="row">Light</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-dark">
                            <th scope="row">Dark</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        </tbody>
                    </table>
                </div><!-- /example -->
            </div>
        </div>
    </div>

    <!-- Forms
    ================================================== -->
    <div class="bs-docs-section">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="forms">Forms</h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="bs-component">
                    <form>
                        <fieldset>
                            <legend>Legend</legend>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="text" readonly class="form-control-plaintext" id="staticEmail"
                                           value="email@example.com">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1"
                                       aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                    anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1"
                                       placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label for="exampleSelect1">Example select</label>
                                <select class="form-select" id="exampleSelect1">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleSelect2">Example multiple select</label>
                                <select multiple class="form-select" id="exampleSelect2">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleTextarea">Example textarea</label>
                                <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="formFile" class="form-label">Default file input example</label>
                                <input class="form-control" type="file" id="formFile">
                            </div>
                            <fieldset class="form-group">
                                <legend>Radio buttons</legend>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="optionsRadios"
                                               id="optionsRadios1" value="option1" checked>
                                        Option one is this and that&mdash;be sure to include why it's great
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="optionsRadios"
                                               id="optionsRadios2" value="option2">
                                        Option two can be something else and selecting it will deselect option one
                                    </label>
                                </div>
                                <div class="form-check disabled">
                                    <label class="form-check-label">
                                        <input type="radio" class="form-check-input" name="optionsRadios"
                                               id="optionsRadios3" value="option3" disabled>
                                        Option three is disabled
                                    </label>
                                </div>
                            </fieldset>
                            <fieldset class="form-group">
                                <legend>Checkboxes</legend>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Default checkbox
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked"
                                           checked>
                                    <label class="form-check-label" for="flexCheckChecked">
                                        Checked checkbox
                                    </label>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>Switches</legend>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault">
                                    <label class="form-check-label" for="flexSwitchCheckDefault">Default switch checkbox
                                        input</label>
                                </div>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                                    <label class="form-check-label" for="flexSwitchCheckChecked">Checked switch checkbox
                                        input</label>
                                </div>
                            </fieldset>
                            <fieldset class="form-group">
                                <legend>Ranges</legend>
                                <label for="customRange1" class="form-label">Example range</label>
                                <input type="range" class="form-range" id="customRange1">
                                <label for="disabledRange" class="form-label">Disabled range</label>
                                <input type="range" class="form-range" id="disabledRange" disabled>
                                <label for="customRange3" class="form-label">Example range</label>
                                <input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
                            </fieldset>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </fieldset>
                    </form>
                </div>
            </div>
            <div class="col-lg-4 offset-lg-1">

                <form class="bs-component">
                    <div class="form-group">
                        <fieldset disabled>
                            <label class="form-label" for="disabledInput">Disabled input</label>
                            <input class="form-control" id="disabledInput" type="text"
                                   placeholder="Disabled input here..." disabled>
                        </fieldset>
                    </div>

                    <div class="form-group">
                        <fieldset>
                            <label class="form-label" for="readOnlyInput">Readonly input</label>
                            <input class="form-control" id="readOnlyInput" type="text"
                                   placeholder="Readonly input here..." readonly>
                        </fieldset>
                    </div>

                    <div class="form-group has-success">
                        <label class="form-label" for="inputValid">Valid input</label>
                        <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
                        <div class="valid-feedback">Success! You've done it.</div>
                    </div>

                    <div class="form-group has-danger">
                        <label class="form-label" for="inputInvalid">Invalid input</label>
                        <input type="text" value="wrong value" class="form-control is-invalid" id="inputInvalid">
                        <div class="invalid-feedback">Sorry, that username's taken. Try another?</div>
                    </div>

                    <div class="form-group">
                        <label class="col-form-label col-form-label-lg" for="inputLarge">Large input</label>
                        <input class="form-control form-control-lg" type="text" placeholder=".form-control-lg"
                               id="inputLarge">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label" for="inputDefault">Default input</label>
                        <input type="text" class="form-control" placeholder="Default input" id="inputDefault">
                    </div>

                    <div class="form-group">
                        <label class="col-form-label col-form-label-sm" for="inputSmall">Small input</label>
                        <input class="form-control form-control-sm" type="text" placeholder=".form-control-sm"
                               id="inputSmall">
                    </div>

                    <div class="form-group">
                        <label class="form-label mt-4">Input addons</label>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <span class="input-group-text">$</span>
                                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
                                <span class="input-group-text">.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label mt-4">Floating labels</label>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Password</label>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <!-- Navs
    ================================================== -->
    <div class="bs-docs-section">

        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="navs">Navs</h1>
                </div>
            </div>
        </div>

        <div class="row mb-5">
            <div class="col-lg-6">
                <h2 id="nav-tabs">Tabs</h2>
                <div class="bs-component">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#profile">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">Dropdown</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade show active" id="home">
                            <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown
                                aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan
                                helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu
                                banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone.
                                Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                        </div>
                        <div class="tab-pane fade" id="profile">
                            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.
                                Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson
                                artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo
                                enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud
                                organic, assumenda labore aesthetic magna delectus mollit.</p>
                        </div>
                        <div class="tab-pane fade" id="dropdown1">
                            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's
                                organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify
                                pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy
                                hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred
                                pitchfork.</p>
                        </div>
                        <div class="tab-pane fade" id="dropdown2">
                            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold
                                out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack
                                portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred
                                vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral
                                locavore cosby sweater.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <h2 id="nav-pills">Pills</h2>
                <div class="bs-component">
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Active</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">Dropdown</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>
                    </ul>
                </div>
                <br>
                <div class="bs-component">
                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Active</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">Dropdown</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#">Disabled</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <h2 id="nav-breadcrumbs">Breadcrumbs</h2>
                <div class="bs-component">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active">Home</li>
                    </ol>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Library</li>
                    </ol>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Library</a></li>
                        <li class="breadcrumb-item active">Data</li>
                    </ol>
                </div>
            </div>

            <div class="col-lg-6">
                <h2 id="pagination">Pagination</h2>
                <div class="bs-component">
                    <div>
                        <ul class="pagination">
                            <li class="page-item disabled">
                                <a class="page-link" href="#">&laquo;</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">5</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                    <div>
                        <ul class="pagination pagination-lg">
                            <li class="page-item disabled">
                                <a class="page-link" href="#">&laquo;</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">5</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                    <div>
                        <ul class="pagination pagination-sm">
                            <li class="page-item disabled">
                                <a class="page-link" href="#">&laquo;</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">5</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- Indicators
    ================================================== -->
    <div class="bs-docs-section">

        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="indicators">Indicators</h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h2>Alerts</h2>
                <div class="bs-component">
                    <div class="alert alert-dismissible alert-warning">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <h4 class="alert-heading">Warning!</h4>
                        <p class="mb-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a
                            pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel
                                scelerisque nisl consectetur et</a>.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="alert alert-dismissible alert-danger">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try
                        submitting again.
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="alert alert-dismissible alert-success">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important
                            alert message</a>.
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="alert alert-dismissible alert-info">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>,
                        but it's not super important.
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="alert alert-dismissible alert-primary">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try
                        submitting again.
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="alert alert-dismissible alert-secondary">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important
                            alert message</a>.
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="alert alert-dismissible alert-light">
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                        <strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>,
                        but it's not super important.
                    </div>
                </div>
            </div>
        </div>
        <div>
            <h2>Badges</h2>
            <div class="bs-component mb-4">
                <span class="badge bg-primary">Primary</span>
                <span class="badge bg-secondary">Secondary</span>
                <span class="badge bg-success">Success</span>
                <span class="badge bg-danger">Danger</span>
                <span class="badge bg-warning">Warning</span>
                <span class="badge bg-info">Info</span>
                <span class="badge bg-light">Light</span>
                <span class="badge bg-dark">Dark</span>
            </div>
            <div class="bs-component">
                <span class="badge rounded-pill bg-primary">Primary</span>
                <span class="badge rounded-pill bg-secondary">Secondary</span>
                <span class="badge rounded-pill bg-success">Success</span>
                <span class="badge rounded-pill bg-danger">Danger</span>
                <span class="badge rounded-pill bg-warning">Warning</span>
                <span class="badge rounded-pill bg-info">Info</span>
                <span class="badge rounded-pill bg-light">Light</span>
                <span class="badge rounded-pill bg-dark">Dark</span>
            </div>
        </div>
    </div>

    <!-- Progress
    ================================================== -->
    <div class="bs-docs-section">

        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="progress">Progress</h1>
                </div>

                <h3 id="progress-basic">Basic</h3>
                <div class="bs-component">
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>

                <h3 id="progress-alternatives">Contextual alternatives</h3>
                <div class="bs-component">
                    <div class="progress">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 25%;" aria-valuenow="25"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 50%;" aria-valuenow="50"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 75%;" aria-valuenow="75"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar bg-danger" role="progressbar" style="width: 100%;" aria-valuenow="100"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>

                <h3 id="progress-multiple">Multiple bars</h3>
                <div class="bs-component">
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: 15%;" aria-valuenow="15"
                             aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-success" role="progressbar" style="width: 30%;" aria-valuenow="30"
                             aria-valuemin="0" aria-valuemax="100"></div>
                        <div class="progress-bar bg-info" role="progressbar" style="width: 20%;" aria-valuenow="20"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>

                <h3 id="progress-striped">Striped</h3>
                <div class="bs-component">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: 10%;"
                             aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%;"
                             aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%;"
                             aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%;"
                             aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%;"
                             aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>

                <h3 id="progress-animated">Animated</h3>
                <div class="bs-component">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"
                             aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Containers
    ================================================== -->
    <div class="bs-docs-section">

        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="containers">Containers</h1>
                </div>
                <div class="bs-component">
                  <div class="jumbotron">
                    <h1 class="display-3">Hello, world!</h1>
                    <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                    <hr class="my-4">
                    <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
                    <p class="lead">
                      <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
                    </p>
                  </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h2>List groups</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4">
                <div class="bs-component">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Cras justo odio
                            <span class="badge bg-primary badge-pill">14</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Dapibus ac facilisis in
                            <span class="badge bg-primary badge-pill">2</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Morbi leo risus
                            <span class="badge bg-primary badge-pill">1</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-action active">
                            Cras justo odio
                        </a>
                        <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in
                        </a>
                        <a href="#" class="list-group-item list-group-item-action disabled">Morbi leo risus
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start active">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">List group item heading</h5>
                                <small>3 days ago</small>
                            </div>
                            <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget
                                risus varius blandit.</p>
                            <small>Donec id elit non mi porta.</small>
                        </a>
                        <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-between">
                                <h5 class="mb-1">List group item heading</h5>
                                <small class="text-muted">3 days ago</small>
                            </div>
                            <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget
                                risus varius blandit.</p>
                            <small class="text-muted">Donec id elit non mi porta.</small>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <h2>Cards</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Primary card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card bg-secondary mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Secondary card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card text-white bg-success mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Success card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card text-white bg-danger mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Danger card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Warning card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card text-white bg-info mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Info card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card bg-light mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Light card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card text-white bg-dark mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Dark card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="card border-primary mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Primary card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card border-secondary mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Secondary card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card border-success mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Success card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card border-danger mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Danger card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card border-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Warning card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card border-info mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Info card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card border-light mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Light card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                    <div class="card border-dark mb-3" style="max-width: 20rem;">
                        <div class="card-header">Header</div>
                        <div class="card-body">
                            <h4 class="card-title">Dark card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="bs-component">
                    <div class="card mb-3">
                        <h3 class="card-header">Card header</h3>
                        <div class="card-body">
                            <h5 class="card-title">Special title treatment</h5>
                            <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                        </div>
                        <svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="100%"
                             height="200" aria-label="Placeholder: Image cap" focusable="false" role="img"
                             preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180"
                             style="font-size:1.125rem;text-anchor:middle">
                            <rect width="100%" height="100%" fill="#868e96"></rect>
                            <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
                        </svg>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Cras justo odio</li>
                            <li class="list-group-item">Dapibus ac facilisis in</li>
                            <li class="list-group-item">Vestibulum at eros</li>
                        </ul>
                        <div class="card-body">
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                        <div class="card-footer text-muted">
                            2 days ago
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Card title</h4>
                            <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Dialogs
    ================================================== -->
    <div class="bs-docs-section">

        <div class="row">
            <div class="col-lg-12">
                <div class="page-header">
                    <h1 id="dialogs">Dialogs</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <h2>Modals</h2>
                <div class="bs-component">
                    <div class="modal">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true"></span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Modal body text goes here.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <h2>Popovers</h2>
                <div class="bs-component mb-5">
                    <button type="button" class="btn btn-secondary" title="Popover Title" data-bs-container="body"
                            data-bs-toggle="popover" data-bs-placement="left"
                            data-bs-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Left
                    </button>

                    <button type="button" class="btn btn-secondary" title="Popover Title" data-bs-container="body"
                            data-bs-toggle="popover" data-bs-placement="top"
                            data-bs-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Top
                    </button>

                    <button type="button" class="btn btn-secondary" title="Popover Title" data-bs-container="body"
                            data-bs-toggle="popover" data-bs-placement="bottom" data-bs-content="Vivamus
            sagittis lacus vel augue laoreet rutrum faucibus.">Bottom
                    </button>

                    <button type="button" class="btn btn-secondary" title="Popover Title" data-bs-container="body"
                            data-bs-toggle="popover" data-bs-placement="right"
                            data-bs-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">Right
                    </button>
                </div>
                <h2>Tooltips</h2>
                <div class="bs-component mb-5">
                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="left"
                            title="Tooltip on left">Left
                    </button>

                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="top"
                            title="Tooltip on top">Top
                    </button>

                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="bottom"
                            title="Tooltip on bottom">Bottom
                    </button>

                    <button type="button" class="btn btn-secondary" data-bs-toggle="tooltip" data-bs-placement="right"
                            title="Tooltip on right">Right
                    </button>
                </div>
                <h2>Toasts</h2>
                <div class="bs-component">
                    <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header">
                            <strong class="me-auto">Bootstrap</strong>
                            <small>11 mins ago</small>
                            <button type="button" class="btn-close ms-2 mb-1" data-bs-dismiss="toast"
                                    aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <div class="toast-body">
                            Hello, world! This is a toast message.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="source-modal" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Source Code</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <pre class="language-html"><code></code></pre>
                </div>
            </div>
        </div>
    </div>
</div>
{script unique="bootstrap" bootstrap="alert,button,carousel,collapse,dropdown,modal,tooltip,popover,scrollspy,tab"}
{literal}
    (function () {
      'use strict';

      $(window).scroll(function () {
        var top = $(document).scrollTop();
        if (top > 50) {
          $('#home > .navbar').removeClass('navbar-transparent');
        } else {
          $('#home > .navbar').addClass('navbar-transparent');
        }
      })

      $('a[href="#"]').click(function (event) {
        event.preventDefault();
      })

      $('.bs-component').each(function () {
        var $component = $(this);
        var $button = $('<button class="source-button btn btn-primary btn-xs" role="button" tabindex="0">&lt; &gt;</button>');
        $component.append($button);

        if ($component.find('[data-bs-toggle="tooltip"]').length > 0) {
          $component.attr('data-html', $component.html());
        }
      });

      var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
      var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        if (typeof bootstrap == "undefined") {
              return new Popover(popoverTriggerEl)
          } else {
              return new bootstrap.Popover(popoverTriggerEl)
          }
      })

      var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
      var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        if (typeof bootstrap == "undefined") {
              return new Tooltip(tooltipTriggerEl)
          } else {
              return new bootstrap.Tooltip(tooltipTriggerEl)
          }
      })

      var sourceModalElem = document.getElementById('source-modal');
      if (sourceModalElem) {
        if (typeof bootstrap == "undefined") {
              var sourceModal = new Modal(document.getElementById('source-modal'));
          } else {
              var sourceModal = new bootstrap.Modal(document.getElementById('source-modal'));
          }
      }

      $('body').on('click', '.source-button', function (event) {
        event.preventDefault();

        var component = $(this).parent();
        var html = component.attr('data-html') ? component.attr('data-html') : component.html();

        html = cleanSource(html);
        // html = Prism.highlight(html, Prism.languages.html, 'html');
        $('#source-modal code').html(html);
        sourceModal.show();
      })

      function cleanSource(html) {
        html = html.replace(/×/g, '&times;')
                   .replace(/«/g, '&laquo;')
                   .replace(/»/g, '&raquo;')
                   .replace(/←/g, '&larr;')
                   .replace(/→/g, '&rarr;')

        var lines = html.split(/\n/);

        lines.shift();
        lines.splice(-1, 1);

        var indentSize = lines[0].length - lines[0].trim().length;
        var re = new RegExp(' {' + indentSize + '}');

        lines = lines.map(function (line) {
          if (line.match(re)) {
            line = line.slice(Math.max(0, indentSize));
          }

          return line;
        });

        lines = lines.join('\n');

        return lines;
      }
    })();
{/literal}
{/script}