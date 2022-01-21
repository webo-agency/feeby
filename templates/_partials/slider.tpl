<div id="{$type}">
    {include file='_partials/slider_header.tpl' title={l s='Related products' mod='relatedfree'}}
    
    <div data-swiper-carousel class="swiper">

        <div class="swiper-wrapper desktop:justify-between">
            {foreach from=$products item="product"}
                <div class="slide relative shrink-0 transition-transform h-full w-[235px] tablet:w-[346px] desktop:w-1/4">
                    {include file='catalog/_partials/miniatures/product.tpl' product=$product}
                </div>
            {/foreach}
        </div>
        
        <div class="swiper-pagination"></div>
    </div>
</div>
