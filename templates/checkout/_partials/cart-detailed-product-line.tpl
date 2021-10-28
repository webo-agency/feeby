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
<div class="flex flex-row w-full">
  <!--  product line left content: image-->
  <div class="w-miniature flex-none mr-5">
    {if $product.cover}
      <img class="rounded-sm" src="{$product.cover.bySize.cart_default.url}" alt="{$product.name|escape:'quotes'}" width="102px" height="102px">
    {else}
      <img class="rounded-sm" src="{$urls.no_picture_image.bySize.cart_default.url}" alt="{l s='Placeholder' d='Shop.Theme.Checkout'}" width="102px" height="102px"/>
    {/if}
  </div>

  <!--  product line body: label, attributes, customizations -->
  <div class="flex-auto px-5">
    
    <a class="block mb-2 text-black font-bold text-sm" href="{$product.url}" data-id_customization="{$product.id_customization|intval}">{$product.name}</a>

    {foreach from=$product.attributes key="attribute" item="value"}
      <div class="flex flex-row">
        <span class="text-gray-500 mr-1">{$attribute}:</span>
        <span class="text-gray-500">{$value}</span>
      </div>
    {/foreach}

    {if is_array($product.customizations) && $product.customizations|count}
      <br>
      {block name='cart_detailed_product_line_customization'}
        {foreach from=$product.customizations item="customization"}
          <a href="#" data-toggle="modal" data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
          <div class="modal fade customization-modal" id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h4>
                </div>
                <div class="modal-body">
                  {foreach from=$customization.fields item="field"}
                    <div class="product-customization-line row">
                      <div class="col-sm-3 col-xs-4 label">
                        {$field.label}
                      </div>
                      <div class="col-sm-9 col-xs-8 value">
                        {if $field.type == 'text'}
                          {if (int)$field.id_module}
                            {$field.text nofilter}
                          {else}
                            {$field.text}
                          {/if}
                        {elseif $field.type == 'image'}
                          <img src="{$field.image.small.url}">
                        {/if}
                      </div>
                    </div>
                  {/foreach}
                </div>
              </div>
            </div>
          </div>
        {/foreach}
      {/block}
    {/if}
  </div>
  
  <!--  product line body: discounts, price  -->
  <div class="w-32 pr-5 product-price h5 {if $product.has_discount}has-discount{/if}">
    {if $product.has_discount}
      <div class="product-discount">
        <span class="regular-price">{$product.regular_price}</span>
        {if $product.discount_type === 'percentage'}
          <span class="discount discount-percentage">
            -{$product.discount_percentage_absolute}
          </span>
        {else}
          <span class="discount discount-amount">
            -{$product.discount_to_display}
          </span>
        {/if}
      </div>
    {/if}
    <div class="current-price">
      <span class="price">{$product.price}</span>
      {if $product.unit_price_full}
        <div class="unit-price-cart">{$product.unit_price_full}</div>
      {/if}
    </div>
  </div>


  <!--  product line right content: actions (quantity, delete), price -->
  <div class="w-32">
    <div class="row">
      <div class="col-xs-4 hidden-md-up"></div>
      <div class="col-md-10 col-xs-6">
        <div class="row">
          <div class="col-md-5 col-xs-6 col-sp-12 qty">
            {if isset($product.is_gift) && $product.is_gift}
              <span class="gift-quantity">{$product.quantity}</span>
            {else}
              <input
                class="js-cart-line-product-quantity"
                data-down-url="{$product.down_quantity_url}"
                data-up-url="{$product.up_quantity_url}"
                data-update-url="{$product.update_quantity_url}"
                data-product-id="{$product.id_product}"
                type="number"
                value="{$product.quantity}"
                name="product-quantity-spin"
              />
            {/if}
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="w-32">
    <span class="product-price">
      <strong>
        {if isset($product.is_gift) && $product.is_gift}
          <span class="gift">{l s='Gift' d='Shop.Theme.Checkout'}</span>
        {else}
          {$product.total}
        {/if}
      </strong>
    </span>
  </div>

  <div class="w-4 flex-none">
    <div class="cart-line-product-actions">
      <a
          class                       = "remove-from-cart"
          rel                         = "nofollow"
          href                        = "{$product.remove_from_cart_url}"
          data-link-action            = "delete-from-cart"
          data-id-product             = "{$product.id_product|escape:'javascript'}"
          data-id-product-attribute   = "{$product.id_product_attribute|escape:'javascript'}"
          data-id-customization   	  = "{$product.id_customization|escape:'javascript'}"
      >
        {if !isset($product.is_gift) || !$product.is_gift}
          <svg width="12" height="12" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill="#EAEEEC" d="M0 0h12v12H0z"/><g clip-path="url(#a)"><path fill="#fff" d="M-1130-465H790V993h-1920z"/><path d="m10.391.492 1.117 1.116c.099.1.112.186.038.26l-9.68 9.679c-.072.073-.159.06-.258-.039L.492 10.392c-.1-.1-.113-.186-.04-.26l9.68-9.679c.074-.073.16-.06.26.039Z" fill="#C4C4C4"/><path d="m1.873.458 9.67 9.67c.076.076.065.164-.035.264l-1.116 1.116c-.1.1-.187.11-.264.034l-9.67-9.67c-.076-.076-.065-.164.034-.264L1.61.492c.1-.1.187-.11.264-.034Z" fill="#C4C4C4"/></g><defs><clipPath id="a"><path fill="#fff" transform="translate(-1130 -465)" d="M0 0h1920v1458H0z"/></clipPath></defs></svg>
        {/if}
      </a>

      {block name='hook_cart_extra_product_actions'}
        {hook h='displayCartExtraProductActions' product=$product}
      {/block}

    </div>
  </div>
    
</div>
