{*
* 2016-2021 Trusted Shops GmbH
*
* NOTICE OF LICENSE
*  @author    Trusted Shops GmbH
*  @copyright 2016-2021 Trusted Shops GmbH
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*
*}
{if isset($hasWidgetTitle) && $hasWidgetTitle == true}
<h3 id="ts_headline" class="page-product-heading">{$review_tab_name|default:{l s='Trusted Shops Reviews' mod='trustedshopsintegration'}|escape:'htmlall':'UTF-8'}</h3>
{/if}
<div id="ts_product_sticker"></div>
<script type="text/javascript">
    _tsProductReviewsConfig = {
        'tsid': '{$id_trusted_shops|escape:'htmlall':'UTF-8'}',
        'sku': ['{$ts_product_sku|escape:'htmlall':'UTF-8'}'],
        'variant': 'productreviews',
        'borderColor': '{$review_tab_border_color|escape:'htmlall':'UTF-8'}',
        'backgroundColor': '{$review_tab_background_color|escape:'htmlall':'UTF-8'}',
        'locale': '{$locale|escape:'htmlall':'UTF-8'}',
        'starColor': '{$review_tab_star_color|escape:'htmlall':'UTF-8'}',
        'starSize': '15px',
        'richSnippets': 'on',
        'ratingSummary': 'false',
        'maxHeight': '600px',
        {if $smarty.const.TSAPI_URL == 'https://api-qa.trustedshops.com'}
            'apiServer': 'https://api-qa.trustedshops.com/',
        {/if}
        'filter': 'true',
        'element': '#ts_product_sticker',
        'introtext': ''
    };
    var scripts = document.getElementsByTagName('SCRIPT'),
    me = scripts[scripts.length - 1];
    var _ts = document.createElement('SCRIPT');
    _ts.type = 'text/javascript';
    _ts.async = true;
    _ts.charset = 'utf-8';
    _ts.src ='//widgets.trustedshops.com/reviews/tsSticker/tsProductSticker.js';
    me.parentNode.insertBefore(_ts, me);
    _tsProductReviewsConfig.script = _ts;
</script>
