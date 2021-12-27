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


<div id="js-product-list-top" class="products-selection">
  <div style="flex: 1 1 auto;background: #000;display: flex;align-items: center;justify-content: center;color: #fff;border-radius: 20px;padding: 5px 35px 5px 15px;margin-bottom: 10px;" class="hidden-md-up" onclick="openMenuWithCategory({$smarty.get.id_category})">
    {l s='Categories' d='Shop.Theme.Global'}
  </div>

  <div class=" flex flex-wrap justify-between tablet: justify-center" >
    <div style="flex:0 0 auto;" class="hidden-md-up w-1/2 bg-main-dark rounded-md mr-[10px] tablet:mr-0 order-1 flex justify-center ">
        {if !empty($listing.rendered_facets)}
          
            <button id="search_filter_toggler_collapse" class="btn bg-transparent text-white" data-toggle="collapse" href="#search_filters_wrapper" aria-expanded="false" aria-controls="search_filters_wrapper">
              {l s='Filter' d='Shop.Theme.Actions'}{if !empty($activeFilters)} ({$activeFilters|count}){/if}
            </button>
        {/if}
    </div>

    {block name='product_list_active_filters'}
      {if isset($listing.rendered_facets) && $listing.rendered_facets}
          <div class="horizontal_filters order-3 tablet:order-2 " style="width: calc(100% - 12rem);">
              
                  <div id="search_filters_wrapper" class="collapse relative" aria-expanded="false" style="">
                      <div class="absolute h-full right-0 w-24 bg-gradient-to-l from-gray-1000 to-transparent pointer-events-none "></div>
                      {$listing.rendered_facets nofilter}
                  </div>
              
          </div>
      {/if}
    {/block}
  

    <div class="flex justify-center tablet:justify-end order-2 tablet:order-3" style="
    {if !empty($activeFilters)}background: #f9f9f9;{/if}
    ">
      <div class="sort-by-row w-1/2 ml-[10px] tablet:ml-0 tablet:w-48">
        {block name='sort_by'}
          {include file='catalog/_partials/sort-orders.tpl' sort_orders=$listing.sort_orders}
        {/block}
      </div>
    </div>

    {block name='product_list_active_filters'}
      <div style="flex:1 1 auto;" class="hidden-sm-down order-4">
        {$listing.rendered_active_filters nofilter}
      </div>
    {/block}

  </div>
</div>
