{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{if !isset($LISTING_GRID_MODE) || !isset($LISTING_PRODUCT_COLUMN) || !isset($LISTING_PRODUCT_COLUMN_MODULE) || !isset($LISTING_PRODUCT_TABLET) || !isset($LISTING_PRODUCT_SMALLDEVICE) || !isset($LISTING_PRODUCT_EXTRASMALLDEVICE) || !isset($LISTING_PRODUCT_MOBILE)}
  {block name="setting"}
    {include file="layouts/setting.tpl"}
  {/block}
{/if}


<div id="js-product-list-top" class="pb-7 tablet:pb-3 pt-0 products-selection tablet:mb-[40px]">
  {if $page.page_name == 'category'}
    <div class="bg-main-dark mb-5 p-2 rounded-full tablet:hidden text-base text-center text-white"
      data-current-category-id="{$smarty.get.id_category}" onclick="openMenuWithCategory({$smarty.get.id_category})">
      {l s='Categories' d='Shop.Theme.Global'}
    </div>
  {/if}

  <div class=" flex flex-wrap justify-between ">
    <div style="flex:0 0 auto;" class="hidden-md-up w-1/2 pr-[10px] order-1 flex justify-center ">
      {if !empty($listing.rendered_facets)}

        <button id="search_filters_toggler"
          class="border-0 px-5 text-left text-base text-normal bg-gray-1000 rounded-md text-main-dark text-left w-full"
          {l s='Filter' d='Shop.Theme.Actions'}
          {if !empty($activeFilters)} 
            ({$activeFilters|count})
          {/if}
          <span class="-top-1 float-right pl-4 relative">
            <i class="material-icons text-xl ">add</i>
          </span>
        </button>
      {/if}
    </div>

    {block name='product_list_active_filters'}
      {if isset($listing.rendered_facets) && $listing.rendered_facets}
        <div id="search_filters_modal"
          class="fixed top-0 left-0 w-screen h-screen bg-black/20 px-5 py-10 transition duration-300">
          <div class="bg-white w-full h-full px-5 rounded-[5px]">
            <div class="py-2.5 flex justify-between border-0 border-b border-solid border-gray-3000">
              <span class="font-header">{l s='Filter' d='Shop.Theme.Actions'}</span>
              <button id="search_filters_modal_close"> close </button>
            </div>
            <div>
              {$listing.rendered_facets nofilter}
            </div>
          </div>
      </div>
      {/if}
    {/block}


    <div
      class="flex justify-center tablet:justify-end order-2 tablet:order-3 rounded-md w-1/2  pl-[10px] tablet:pl-0 z-30 tablet:bg-gray-1000 {if isset($listing.rendered_facets) && $listing.rendered_facets}  tablet:rounded-none tablet:rounded-r-md tablet:w-auto  {else} tablet:w-full {/if} ">
      <div class="sort-by-row w-full tablet:w-48">
        {block name='sort_by'}
          {include file='catalog/_partials/sort-orders.tpl' sort_orders=$listing.sort_orders}
        {/block}
      </div>
    </div>

    {block name='product_list_active_filters'}
      <div style="flex:1 1 auto;" class="active-search-wrapper collapse order-4 tablet:h-full tablet:block">
        {$listing.rendered_active_filters nofilter}
      </div>
    {/block}

  </div>
</div>