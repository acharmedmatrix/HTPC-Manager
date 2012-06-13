#include $webdir + "/header.tpl"#

<div class="container">

    <div class="content maincontent">

        <div class="page-header page-title">
            <h1>Settings</h1>
        </div>

        <div id="notification-area"></div>

        <ul class="nav nav-tabs">
            <li class="active"><a href="#data" data-toggle="tab">General setting</a></li>
            <li><a href="#miscellaneous" data-toggle="tab">Miscellaneous</a></li>
            <li><a href="#search" data-toggle="tab">NZB Search</a></li>
            <li><a href="#service" data-toggle="tab">Service</a></li>
        </ul>

        <form action="" id="base-settings-form" name="base-settings-form" method="post" class="form-horizontal">
            <input type="hidden" name="save_settings" value="1" />

            <div class="tab-content">
                <div id="data" class="tab-pane active" >
                        <fieldset>
                            <legend>HTPC-Manager</legend>
                            <div class="control-group">
                                <label class="control-label" for="app_port">IP / Host : Port</label>
                                <div class="controls">
                                    <input class="span3" id="app_host" name="app_host" type="text" value="$getVar('app_host', '')" /> : 
                                    <input class="span1" id="app_port" name="app_port" type="text" value="$getVar('app_port', '')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="app_username">Username</label>
                                <div class="controls">
                                    <input class="span3" id="app_username" name="app_username" type="text" value="$getVar('app_username', '')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="app_password">Password</label>
                                <div class="controls">
                                    <input class="span3" id="app_password" name="app_password" type="password" value="$getVar('app_password', '')" />
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>SABnzbd</legend>
                            <div class="control-group">
                                <label class="control-label">Enable</label>
                                <div class="controls">
                                    <label class="checkbox enable-module">
                                        #if $getVar('use_sabnzbd', 0)
                                        <input type="checkbox" checked="checked" value="1" name="use_sabnzbd" />
                                        #else
                                        <input type="checkbox" value="1" name="use_sabnzbd" />
                                        #end if
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="sabnzbd_host">IP / Host : Port</label>
                                <div class="controls">
                                    <input class="span3" id="sabnzbd_host" name="sabnzbd_host" type="text" value="$getVar('sabnzbd_host', '')" /> : 
                                    <input class="span1" id="sabnzbd_port" name="sabnzbd_port" type="text" value="$getVar('sabnzbd_port', '')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="sabnzbd_apikey">API Key</label>
                                <div class="controls">
                                    <input class="span3" id="sabnzbd_apikey" name="sabnzbd_apikey" type="text" value="$getVar('sabnzbd_apikey', '')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">SSL</label>
                                <div class="controls">
                                    <label class="radio">
                                        #if $getVar('sabnzbd_ssl', 0) == 0
                                        <input type="radio" checked="checked" value="0" name="sabnzbd_ssl" /> No
                                        #else
                                        <input type="radio" checked="" value="0" name="sabnzbd_ssl" /> No
                                        #end if
                                    </label>
                                    <label class="radio">
                                        #if $getVar('nzb_ssl', 0)
                                        <input type="radio" checked="checked" value="1" name="sabnzbd_ssl" /> Yes
                                        #else
                                        <input type="radio" value="1" name="sabnzbd_ssl" /> Yes
                                        #end if
                                    </label>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>SickBeard</legend>
                            <div class="control-group">
                                <label class="control-label">Enable</label>
                                <div class="controls">
                                    <label class="checkbox enable-module">
                                        #if $getVar('use_sickbeard', 0)
                                        <input type="checkbox" checked="checked" value="1" name="use_sickbeard" />
                                        #else
                                        <input type="checkbox" value="1" name="use_sickbeard" />
                                        #end if
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="sickbeard_host">IP / Host : Port</label>
                                <div class="controls">
                                    <input class="span3" id="sickbeard_host" name="sickbeard_host" type="text" value="$getVar('sickbeard_host', '')" />
                                    <input class="span1" id="sickbeard_port" name="sickbeard_port" type="text" value="$getVar('sickbeard_port', '')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="sickbeard_apikey">API Key</label>
                                <div class="controls">
                                    <input class="span3" id="sickbeard_apikey" name="sickbeard_apikey" type="text" value="$getVar('sickbeard_apikey', '')" />
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend>XBMC</legend>
                            <div class="control-group">
                                <label class="control-label">Enable</label>
                                <div class="controls">
                                    <label class="checkbox enable-module">
                                        #if $getVar('use_xbmc', 0)
                                        <input type="checkbox" checked="checked" value="1" name="use_xbmc" />
                                        #else
                                        <input type="checkbox" value="1" name="use_xbmc" />
                                        #end if
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="xbmc_host">IP / Host : Port</label>
                                <div class="controls">
                                    <input class="span3" id="xbmc_host" name="xbmc_host" type="text" value="$getVar('xbmc_host', '')" /> :
                                    <input class="span1" id="xbmc_port" name="xbmc_port" type="text" value="$getVar('xbmc_port', '')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="xbmc_username">Username</label>
                                <div class="controls">
                                    <input class="span3" id="xbmc_username" name="xbmc_username" type="text" value="$getVar('xbmc_username', '')" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="xbmc_password">Password</label>
                                <div class="controls">
                                    <input class="span3" id="xbmc_password" name="xbmc_password" type="password" value="$getVar('xbmc_password', '')" />
                                </div>
                            </div>
                        </fieldset>

                        <div class="form-actions">
                            <input class="btn btn-primary" type="submit" value="Save changes" />
                            <input class="btn" type="reset" value="Clear" />
                        </div>

                </div>

                <div id="miscellaneous" class="tab-pane" >
                        <fieldset>
                            <legend>Thumbnails</legend>
                            <div class="control-group">
                                <label class="control-label" for="regenerate_thumbs">Regenerate thumbnails</label>
                                <div class="controls">
                                    <input type="checkbox" value="1" name="regenerate_thumbs" id="regenerate_thumbs" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Banners for TV Shows</label>
                                <div class="controls">
                                    <label class="checkbox">
                                        #if $getVar('xbmc_show_banners', 0)
                                        <input type="checkbox" checked="checked" value="1" name="xbmc_show_banners" />
                                        #else
                                        <input type="checkbox" value="1" name="xbmc_show_banners" />
                                        #end if
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Hide seen TV Shows</label>
                                <div class="controls">
                                    <label class="checkbox">
                                        #if $getVar('xbmc_hide_watched', 0)
                                        <input type="checkbox" checked="checked" value="1" name="xbmc_hide_watched" />
                                        #else
                                        <input type="checkbox" value="1" name="xbmc_hide_watched" />
                                        #end if
                                    </label>
                                </div>
                            </div>
                        </fieldset>

                        <div class="form-actions">
                            <input class="btn btn-primary" type="submit" value="Save changes" />
                            <input class="btn" type="reset" value="Clear" />
                        </div>
                </div>

                <div id="search" class="tab-pane" >
                        <fieldset>
                            <legend>NZB Matrix</legend>
                            <div class="control-group">
                                <label class="control-label">Enable</label>
                                <div class="controls">
                                    <label class="checkbox enable-module">
                                        #if $getVar('use_nzbmatrix', 0)
                                        <input type="checkbox" checked="checked" value="1" name="use_nzbmatrix" />
                                        #else
                                        <input type="checkbox" value="1" name="use_nzbmatrix" />
                                        #end if
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="nzbmatrix_apikey">API Key</label>
                                <div class="controls">
                                    <input class="span3" id="nzbmatrix_apikey" name="nzbmatrix_apikey" type="text" value="$getVar('nzbmatrix_apikey', '')" />
                                </div>
                            </div>
                        </fieldset>

                        <div class="form-actions">
                            <input class="btn btn-primary" type="submit" value="Save changes" />
                            <input class="btn" type="reset" value="Clear" />
                        </div>

                </div>

                <div id="service" class="tab-pane" >
                        <fieldset>
                            <legend>Service</legend>
                            <div class="control-group">
                                <a href="/shutdown">Shutdown</a>
                            </div>
                        </fieldset>
                 </div>

            </div>

        </form>
    </div>

</div>


#include $webdir + "/footer.tpl"#