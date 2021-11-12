{*
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
<!-- @file modules\appagebuilder\views\templates\hook\ApBlockLink -->

{* mt-10 py-6 w-3/5 justify-start phone-wide:flex-col phone-wide:px-6 phone-wide:py-20 *}

{if $hookName = 'displayFooter'}

    {if isset($formAtts.lib_has_error) && $formAtts.lib_has_error}
        {if isset($formAtts.lib_error) && $formAtts.lib_error}
            <div class="alert alert-warning leo-lib-error">{$formAtts.lib_error}</div>
        {/if}
    {else}
        {if !isset($formAtts.accordion_type) || $formAtts.accordion_type == 'full'}{* Default : always full *}
            <div class="ApLink {(isset($formAtts.class)) ? $formAtts.class : ''|escape:'html':'UTF-8'}">
                {if isset($formAtts.title) && !empty($formAtts.title)}
                    <h4 class="mb-0 text-lg uppercase">
                        {$formAtts.title|escape:'html':'UTF-8'}
                    </h4>
                {/if}
                {if isset($formAtts.sub_title) && $formAtts.sub_title}
                    <div class="sub-title-widget">{$formAtts.sub_title nofilter}</div>
                {/if}

                {if isset($formAtts.links) && $formAtts.links|@count > 0}
                    <ul>
                    {foreach from=$formAtts.links item=item}
                        {if $item.title && $item.link}
                            <li><a href="{$item.link}" target="{$item.target_type}">{$item.title|escape:'html':'UTF-8'}</a></li>
                        {/if}
                    {/foreach}
                    </ul>
                {/if}
            </div>
        {elseif isset($formAtts.accordion_type) && ($formAtts.accordion_type == 'accordion' || $formAtts.accordion_type == 'accordion_small_screen')}{* Case : full or accordion*}
            <div class="block-toggler ApLink {(isset($formAtts.class)) ? $formAtts.class : ''|escape:'html':'UTF-8'}{if $formAtts.accordion_type == 'accordion_small_screen'} accordion_small_screen{/if}">
                {if isset($formAtts.title) && !empty($formAtts.title)}
                    <div class="title clearfix bg-white phone-wide:bg-transparent clearfix flex h-14 items-center px-6 phone-wide:px-0 border-0 border-b-2 border-solid border-gray-default phone-wide:border-b-0" data-target="#footer-link-{$formAtts.form_id|escape:'html':'UTF-8'}" data-toggle="collapse">
                        <h4 class="mb-0 text-lg uppercase">
                        {$formAtts.title|escape:'html':'UTF-8'}
                        </h4>
                        <span class="float-xs-right">
                        <span class="navbar-toggler collapse-icons">
                            <i class="material-icons add">&#xE313;</i>
                            <i class="material-icons remove">&#xE316;</i>
                        </span>
                        </span>
                    </div>
                {/if}
                {if isset($formAtts.sub_title) && $formAtts.sub_title}
                    <div class="sub-title-widget">{$formAtts.sub_title nofilter}</div>
                {/if}
                {if isset($formAtts.links) && $formAtts.links|@count > 0}
                    <ul class="collapse" id="footer-link-{$formAtts.form_id|escape:'html':'UTF-8'}">
                        {foreach from=$formAtts.links item=item}
                            {if $item.title && $item.link}
                                <li class="border-0 border-b-2 border-solid border-white phone-wide:border-b-0 flex h-14 phone-wide:h-10 items-center px-6"><a href="{$item.link}" target="{$item.target_type}">{$item.title|escape:'html':'UTF-8'}</a></li>
                            {/if}
                        {/foreach}
                    </ul>
                {/if}
            </div>
        {/if}
    {/if}

{else}

    {if isset($formAtts.lib_has_error) && $formAtts.lib_has_error}
        {if isset($formAtts.lib_error) && $formAtts.lib_error}
            <div class="alert alert-warning leo-lib-error">{$formAtts.lib_error}</div>
        {/if}
    {else}
        {if !isset($formAtts.accordion_type) || $formAtts.accordion_type == 'full'}{* Default : always full *}
            <div class=" ApLink {(isset($formAtts.class)) ? $formAtts.class : ''|escape:'html':'UTF-8'}">
                {if isset($formAtts.title) && !empty($formAtts.title)}
                    <h4 class="mb-0 text-lg uppercase">
                        {$formAtts.title|escape:'html':'UTF-8'}
                    </h4>
                {/if}
                {if isset($formAtts.sub_title) && $formAtts.sub_title}
                    <div class="sub-title-widget">{$formAtts.sub_title nofilter}</div>
                {/if}

                {if isset($formAtts.links) && $formAtts.links|@count > 0}
                    <ul>
                    {foreach from=$formAtts.links item=item}
                        {if $item.title && $item.link}
                                <li class="border-0 border-b-2 border-solid border-white phone-wide:border-b-0 flex h-14 phone-wide:h-10 items-center px-6"><a href="{$item.link}" target="{$item.target_type}">{$item.title|escape:'html':'UTF-8'}</a></li>
                        {/if}
                    {/foreach}
                    </ul>
                {/if}
            </div>
        {elseif isset($formAtts.accordion_type) && ($formAtts.accordion_type == 'accordion' || $formAtts.accordion_type == 'accordion_small_screen')}{* Case : full or accordion*}
            <div class="block block-toggler ApLink {(isset($formAtts.class)) ? $formAtts.class : ''|escape:'html':'UTF-8'}{if $formAtts.accordion_type == 'accordion_small_screen'} accordion_small_screen{/if}">
                {if isset($formAtts.title) && !empty($formAtts.title)}
                    <div class="title clearfix" data-target="#footer-link-{$formAtts.form_id|escape:'html':'UTF-8'}" data-toggle="collapse">
                        <h4 class="title_block">
                        {$formAtts.title|escape:'html':'UTF-8'}
                        </h4>
                        <span class="float-xs-right">
                        <span class="navbar-toggler collapse-icons">
                            <i class="material-icons add">&#xE313;</i>
                            <i class="material-icons remove">&#xE316;</i>
                        </span>
                        </span>
                    </div>
                {/if}
                {if isset($formAtts.sub_title) && $formAtts.sub_title}
                    <div class="sub-title-widget">{$formAtts.sub_title nofilter}</div>
                {/if}
                {if isset($formAtts.links) && $formAtts.links|@count > 0}
                    <ul class="collapse" id="footer-link-{$formAtts.form_id|escape:'html':'UTF-8'}">
                        {foreach from=$formAtts.links item=item}
                            {if $item.title && $item.link}
                                <li><a href="{$item.link}" target="{$item.target_type}">{$item.title|escape:'html':'UTF-8'}</a></li>
                            {/if}
                        {/foreach}
                    </ul>
                {/if}
            </div>
        {/if}
    {/if}

{/if}
