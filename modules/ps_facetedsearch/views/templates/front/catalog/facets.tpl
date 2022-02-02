{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
 {if $displayedFacets|count}
  <div id="search_filters" class="flex flex-wrap">
    <div class="tablet:pl-5 w-full whitespace-nowrap">
      <div class="flex flex-col tablet:flex-wrap tablet:flex-row w-full">
      {foreach from=$displayedFacets item="facet"}
        <div class="tablet:pr-5 py-2.5">
          <section class="facet clearfix">
            {assign var=_expand_id value=10|mt_rand:100000}
            {assign var=_collapse value=true}
            {foreach from=$facet.filters item="filter"}
              {if $filter.active}{assign var=_collapse value=false}{/if}
            {/foreach}

            <div class="title cursor-pointer px-5 tablet:px-0 border-0 border-b-2 tablet:border-b-0 border-gray-1000 border-solid py-3 tablet:py-0 justify-between tablet:justify-start {if $_collapse}collapsed{/if}" data-parent="#search_filters" data-target="#facet_{$_expand_id}" data-toggle="collapse"{if !$_collapse} aria-expanded="true"{/if}>
              <p class="facet-title m-0 text-base font-body font-normal">{$facet.label}</p>
              <span class="pl-4 -top-1 relative">
                <i class="material-icons text-xl ">add</i>
              </span>
            </div>

            {if in_array($facet.widgetType, ['radio', 'checkbox'])}
              {block name='facet_item_other'}
                <ul id="facet_{$_expand_id}" class="collapse tablet:max-w-[350px] tablet:min-w-[260px] tablet:-ml-[19px] tablet:mt-[13px] bg-gray-1000 rounded-b-md">
                  {foreach from=$facet.filters key=filter_key item="filter"}
                    {if !$filter.displayed}
                      {continue}
                    {/if}

                    <li class="border-0 border-b border-solid border-white px-5 py-2">
                      <label class="facet-label whitespace-nowrap {if $filter.active} active {/if}" for="facet_input_{$_expand_id}_{$filter_key}">
                        {if $facet.multipleSelectionAllowed}
                          <span class="custom-checkbox">
                            <input
                              id="facet_input_{$_expand_id}_{$filter_key}"
                              data-search-url="{$filter.nextEncodedFacetsURL}"
                              type="checkbox"
                              {if $filter.active }checked{/if}
                            >
                            {if isset($filter.properties.color)}
                              <i class="material-icons text-main -left-1 -top-[7px] text-lg relative">close</i>
                            {elseif isset($filter.properties.texture)}
                              <i class="material-icons text-main -left-1 -top-[7px] text-lg relative">close</i>
                            {else}
                              <span {if !$js_enabled} class="ps-shown-by-js" {/if}><i class="material-icons text-main -left-1 -top-[7px] text-lg relative">close</i></span>
                            {/if}
                          </span>
                        {else}
                          <span class="custom-radio border-0 bg-transparent">
                            <input
                              id="facet_input_{$_expand_id}_{$filter_key}"
                              data-search-url="{$filter.nextEncodedFacetsURL}"
                              type="radio"
                              name="filter {$facet.label}"
                              {if $filter.active }checked{/if}
                            >
                            <span {if !$js_enabled} class="ps-shown-by-js hidden" {/if}>
                              <i class="material-icons text-main -left-1 -top-[7px] text-lg relative">close</i></span>
                          </span>
                        {/if}

                        <a
                          href="{$filter.nextEncodedFacetsURL}"
                          class="text-main-dark text-base font-light search-link js-search-link"
                          rel="nofollow"
                        >

                          {if $facet.type == 'feature'}
                            {if $facet.properties.id_feature == '4'}
                              <div class="bg-gray-2000 clearfix float-left w-6 h-6 mr-6 rounded"
                              style="{if $filter_key == "0"}
                                background-color: #C2B280;
                              {elseif $filter_key == "1"}
                                background-color: #964B00;
                              {elseif $filter_key == "2"}
                                background-color: #000000;
                              {elseif $filter_key == "3"}
                                background-color: #ff0000;
                              {elseif $filter_key == "4"}
                                background-color: #B803FF;
                              {elseif $filter_key == "5"}
                                background: linear-gradient( 90deg, rgba(255, 0, 0, 1) 0%, rgba(255, 154, 0, 1) 10%, rgba(208, 222, 33, 1) 20%, rgba(79, 220, 74, 1) 30%, rgba(63, 218, 216, 1) 40%, rgba(47, 201, 226, 1) 50%, rgba(28, 127, 238, 1) 60%, rgba(95, 21, 242, 1) 70%, rgba(186, 12, 248, 1) 80%, rgba(251, 7, 217, 1) 90%, rgba(255, 0, 0, 1) 100% );
                              {elseif $filter_key == "6"}
                                background-color: #0000ff;
                              {elseif $filter_key == "7"}
                                background-color: #FFA500;
                              {elseif $filter_key == "8"}
                                background-color: #FFCCDD;
                              {elseif $filter_key == "9"}
                                background-color: #C0C0C0;
                              {elseif $filter_key == "10"}
                                background-color: #505050;
                              {elseif $filter_key == "11"}
                                background-color: #00ff00;
                              {elseif $filter_key == "12"}
                                background-color: #FFD700;
                              {elseif $filter_key == "13"}
                                background-color: #FFFF00;
                              {/if}"
                              ></div>
                            {/if}
                          {/if}
                          {$filter.label}
                          {if $filter.magnitude and $show_quantities}
                            <span class="magnitude text-sm">({$filter.magnitude})</span>
                          {/if}
                        </a>
                      </label>
                    </li>
                  {/foreach}
                </ul>
              {/block}

            {elseif $facet.widgetType == 'dropdown'}
              {block name='facet_item_dropdown'}
                <ul id="facet_{$_expand_id}" class="collapse{if !$_collapse} in{/if} tablet:max-w-[350px] tablet:min-w-[260px] tablet:-ml-[19px] tablet:mt-[13px] bg-gray-1000 rounded-b-md">
                  <li class="border-0 border-b border-solid border-white px-5 py-2">
                    <div class="col-sm-12 col-xs-12 col-md-12 facet-dropdown dropdown">
                      <a class="select-title text-main-dark text-base font-light" rel="nofollow" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {$active_found = false}
                        <span>
                          {foreach from=$facet.filters item="filter"}
                            {if $filter.active}
                              {$filter.label}
                              {if $filter.magnitude and $show_quantities}
                                ({$filter.magnitude})
                              {/if}
                              {$active_found = true}
                            {/if}
                          {/foreach}
                          {if !$active_found}
                            {l s='(no filter)' d='Shop.Theme.Global'}
                          {/if}
                        </span>
                        <i class="material-icons float-xs-right">&#xE5C5;</i>
                      </a>
                      <div class="dropdown-menu">
                        {foreach from=$facet.filters item="filter"}
                          {if !$filter.active}
                            <a
                              rel="nofollow"
                              href="{$filter.nextEncodedFacetsURL}"
                              class="select-list text-main-dark text-base font-light js-search-link"
                            >
                              {$filter.label}
                              {if $filter.magnitude and $show_quantities}
                                ({$filter.magnitude})
                              {/if}
                            </a>
                          {/if}
                        {/foreach}
                      </div>
                    </div>
                  </li>
                </ul>
              {/block}

            {elseif $facet.widgetType == 'slider'}
              {block name='facet_item_slider'}
                {foreach from=$facet.filters item="filter"}
                  <ul id="facet_{$_expand_id}"
                    class="faceted-slider collapse{if !$_collapse} in{/if} tablet:max-w-[350px] tablet:min-w-[260px] tablet:-ml-[19px] tablet:mt-[13px] bg-gray-1000 rounded-b-md"
                    data-slider-min="{$facet.properties.min}"
                    data-slider-max="{$facet.properties.max}"
                    data-slider-id="{$_expand_id}"
                    data-slider-values="{$filter.value|@json_encode}"
                    data-slider-unit="{$facet.properties.unit}"
                    data-slider-label="{$facet.label}"
                    data-slider-specifications="{$facet.properties.specifications|@json_encode}"
                    data-slider-encoded-url="{$filter.nextEncodedFacetsURL}"
                  >
                    <li class="border-0 border-b border-solid border-white px-5 py-2">
                      <p id="facet_label_{$_expand_id}">
                        {$filter.label}
                      </p>

                      <div id="slider-range_{$_expand_id}"></div>
                    </li>
                  </ul>
                {/foreach}
              {/block}
            {/if}
          </section>
        </div>
      {/foreach}
      </div>
    </div>
  </div>
{/if}
