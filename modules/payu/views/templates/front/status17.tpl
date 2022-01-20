{*
 * @author    PayU
 * @copyright Copyright (c) 2014-2017 PayU
 * @license   http://opensource.org/licenses/LGPL-3.0  Open Software License (LGPL 3.0)
 *
 * http://www.payu.com
*}
{extends file=$layout}

{block name='breadcrumb'}{/block}

{block name='content'}

    <section id="main">
        <div class="text-xs-center">
            <img src="{$payuLogo}"> {l s='Thanks for choosing PayU payment' mod='payu'}
            <h2 style="margin: 30px 0">
                {l s='Order status' mod='payu'} {$orderPublicId} - {$orderStatus} <br/>
            </h2>

            {$HOOK_ORDER_CONFIRMATION nofilter}
            {$HOOK_PAYMENT_RETURN nofilter}

            <div class="cart_navigation">
                <a class="bg-main hover:bg-main-hover duration-150 border-0 rounded-full text-white px-4 uppercase whitespace-nowrap font-body py-2 hover:text-white" href="{$redirectUrl}">
                    {l s='Order details' mod='payu'}
                </a>
            </p>
        </div>
    </section>

{/block}