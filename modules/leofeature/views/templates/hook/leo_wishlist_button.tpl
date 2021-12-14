{* 
* @Module Name: Leo Feature
* @Website: leotheme.com.com - prestashop template provider
* @author Leotheme <leotheme@gmail.com>
* @copyright   Leotheme
* @description: Leo feature for prestashop 1.7: ajax cart, review, compare, wishlist at product list 
*}

{if $page.page_name == "index"}

	<div class="wishlist">
	{if isset($wishlists) && count($wishlists) > 1}
		<div class="dropdown leo-wishlist-button-dropdown">
		  <button class="leo-wishlist-button dropdown-toggle show-list btn-primary btn-product btn{if $added_wishlist} added{/if} group" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-id-wishlist="{$id_wishlist}" data-id-product="{$leo_wishlist_id_product}" data-id-product-attribute="{$leo_wishlist_id_product_attribute}">
			<span class="leo-wishlist-bt-loading cssload-speeding-wheel"></span>
			<span class="leo-wishlist-bt-content">
				<svg class="wishlist-svg transition" width="32px" height="32px" viewBox="0 0 512 512" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" xmlns:serif="http://www.serif.com/" style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:2;">
					<path d="M214.816,402.321c-0.088,-0.064 -0.171,-0.132 -0.248,-0.207c-20.71,-19.89 -119.45,-119.204 -119.45,-119.204c-0.485,-0.484 -0.9,-1.023 -1.239,-1.607l0.008,0.012l-0.047,-0.081l-0.053,-0.048l0.032,0.012l-0.002,-0.003l-0.035,-0.013c-24.685,-22.661 -38.782,-55.774 -38.782,-91.302c0,-65.094 46.835,-118.088 104.442,-118.088c44.527,0 81.278,41.399 96.151,60.918l0.407,0.534l0.407,-0.534c14.873,-19.519 51.624,-60.918 96.151,-60.918c57.608,0 104.442,52.994 104.442,118.088c0,29.659 -9.845,57.973 -27.771,79.925l-0.033,0.039l-0.023,0.045c-0.363,0.685 -0.831,1.315 -1.4,1.876l-0.169,0.069l-0.593,0.282c0.282,0 0.552,-0.12 0.742,-0.33c-1.439,1.593 -2.724,2.838 -4.025,4.065l-1.669,1.621l-160.484,160.426c-1.54,1.539 -3.558,2.31 -5.575,2.31l-0.034,-0c-0.529,-0 -1.045,-0.052 -1.543,-0.152c-1.422,-0.271 -2.811,-0.908 -3.773,-1.91c-1.582,-1.444 -2.574,-3.521 -2.574,-5.829c0,-2.436 1.106,-4.616 2.844,-6.064c27.385,-28.092 161.949,-161.834 161.949,-161.834c0.006,-0.006 0.011,-0.011 0.017,-0.017c0.859,-0.819 1.727,-1.621 2.521,-2.531l0.003,0.006l0,-0.001l-0.002,-0.006l0.025,-0.029l0.02,-0.032c0.169,-0.265 0.36,-0.523 0.566,-0.768l-0.008,0.011c-0.042,0.052 -0.074,0.105 -0.098,0.158c-0.137,0.269 -0.145,0.589 -0.015,0.87c0.072,0.157 0.182,0.289 0.316,0.386l0.002,-0.002c-0.133,-0.097 -0.243,-0.228 -0.316,-0.384c-0.126,-0.271 -0.122,-0.58 0.001,-0.843l0.012,-0.027c0.033,-0.068 0.075,-0.132 0.125,-0.191l0.013,-0.015c16.233,-19.296 25.18,-44.555 25.18,-71.124c0,-56.435 -39.799,-102.317 -88.673,-102.317c-19.342,-0 -37.559,10.073 -52.472,22.223c-22.3,18.168 -37.208,40.955 -37.455,41.334l-0.834,0.453l-0.005,0.004l0.84,-0.457c-1.456,2.248 -4.047,3.359 -6.632,3.359c-2.585,-0 -5.176,-1.111 -6.631,-3.358l0.835,0.454l0.004,0.002l-0.84,-0.457c-0.246,-0.38 -15.155,-23.166 -37.454,-41.334c-14.913,-12.15 -33.13,-22.223 -52.472,-22.223c-48.874,-0 -88.673,45.881 -88.673,102.317c0,31.98 12.932,61.611 35.481,81.303c0,-0 0.001,0.001 0.002,0.002c0.761,0.669 1.386,1.469 1.832,2.347l0.037,0.073l117.408,117.173c1.763,1.448 2.888,3.644 2.888,6.1c0,4.355 -3.536,7.89 -7.891,7.89c-2.245,-0 -4.272,-0.94 -5.71,-2.447Zm-119.581,-120.788c0.025,0.031 0.049,0.063 0.074,0.094c-0.164,0.112 -0.36,0.175 -0.564,0.175c0,-0 0.244,-0.092 0.49,-0.269Zm-1.096,-0.213l0.006,0.004l0.313,0.121l-0.319,-0.125Zm13.87,-6.414l-0.071,-0.071c0.203,-0.173 0.372,-0.408 0.361,-0.708c0.011,0.153 -0.012,0.308 -0.073,0.455c-0.051,0.124 -0.125,0.233 -0.217,0.324Zm318.476,-3.216l0.235,-0.255l0.291,0.681c-0.256,-0 -0.496,-0.098 -0.677,-0.265l0.151,-0.161Zm0.303,-0.329l-0.01,0.01l0.293,0.681l-0.283,-0.691Zm1.571,-1.073l-0.061,-0.128l-0.02,-0.004l0.081,0.132Zm-11.763,-8.369c-0.159,-0.516 -0.372,-1.093 -0.496,-0.968l-0.058,0.063c-0.058,0.069 -0.105,0.144 -0.141,0.223c-0.171,0.409 0.124,0.8 0.422,1.068c0.085,-0.131 0.177,-0.26 0.273,-0.386Zm-155.195,-110.807c-0.068,0.083 -0.138,0.163 -0.211,0.242c0.271,0.186 0.582,0.22 0.602,0.222c-0.015,-0.018 -0.19,-0.234 -0.391,-0.464Z" style="fill-rule:nonzero;"/>
					<path d="M214.816,402.321c-0.088,-0.064 -0.171,-0.132 -0.248,-0.207c-20.71,-19.89 -119.45,-119.204 -119.45,-119.204c-0.485,-0.484 -0.9,-1.023 -1.239,-1.607l0.008,0.012l-0.047,-0.081l-0.053,-0.048l0.032,0.012l-0.002,-0.003l-0.035,-0.013c-24.685,-22.661 -38.782,-55.774 -38.782,-91.302c0,-65.094 46.835,-118.088 104.442,-118.088c44.527,0 81.278,41.399 96.151,60.918l0.407,0.534l0.407,-0.534c14.873,-19.519 51.624,-60.918 96.151,-60.918c57.608,0 104.442,52.994 104.442,118.088c0,29.659 -9.845,57.973 -27.771,79.925l-0.033,0.039l-0.023,0.045c-0.363,0.685 -0.831,1.315 -1.4,1.876l-0.169,0.069l-0.593,0.282c0.282,0 0.552,-0.12 0.742,-0.33c-1.439,1.593 -2.724,2.838 -4.025,4.065l-1.669,1.621l-160.484,160.426c-1.54,1.539 -3.558,2.31 -5.575,2.31l-0.034,-0c-0.529,-0 -1.045,-0.052 -1.543,-0.152c-1.422,-0.271 -2.811,-0.908 -3.773,-1.91c-1.582,-1.444 -34.396,-34.318 -35.834,-35.825Zm-119.581,-120.788c0.025,0.031 0.049,0.063 0.074,0.094c-0.164,0.112 -0.36,0.175 -0.564,0.175c-0,0 0.244,-0.092 0.49,-0.269Zm-1.096,-0.213l0.006,0.004l0.313,0.121l-0.319,-0.125Zm332.346,-9.63l0.235,-0.255l0.291,0.681c-0.256,0 -0.496,-0.098 -0.677,-0.265l0.151,-0.161Zm0.303,-0.329l-0.01,0.01l0.293,0.681l-0.283,-0.691Zm1.571,-1.073l-0.061,-0.128l-0.02,-0.004l0.081,0.132Z" style="fill-rule:nonzero;"/>
				</svg>

				<span class="name-btn-product">{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}</span>
			</span>
			
		  </button>
		  <div class="dropdown-menu leo-list-wishlist leo-list-wishlist-{$leo_wishlist_id_product}">
			{foreach from=$wishlists item=wishlists_item}
				<a href="javascript:void(0)" class="dropdown-item list-group-item list-group-item-action wishlist-item{if in_array($wishlists_item.id_wishlist, $wishlists_added)} added {/if}" data-id-wishlist="{$wishlists_item.id_wishlist}" data-id-product="{$leo_wishlist_id_product}" data-id-product-attribute="{$leo_wishlist_id_product_attribute}" title="{if in_array($wishlists_item.id_wishlist, $wishlists_added)}{l s='Remove from Wishlist' d='Modules.Leofeature.Shop'}{else}{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}{/if}">{$wishlists_item.name}</a>			
			{/foreach}
		  </div>
		</div>
	{else}
		<a class="leo-wishlist-button btn-product btn-primary btn{if $added_wishlist} added{/if} group" href="javascript:void(0)" data-id-wishlist="{$id_wishlist}" data-id-product="{$leo_wishlist_id_product}" data-id-product-attribute="{$leo_wishlist_id_product_attribute}" title="{if $added_wishlist}{l s='Remove from Wishlist' d='Modules.Leofeature.Shop'}{else}{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}{/if}">
			<span class="leo-wishlist-bt-loading cssload-speeding-wheel"></span>
			<span class="leo-wishlist-bt-content justify-center">
				<svg class="wishlist-svg transition" width="32px" height="32px" viewBox="0 0 512 512" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" xmlns:serif="http://www.serif.com/" style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:2;">
					<path d="M214.816,402.321c-0.088,-0.064 -0.171,-0.132 -0.248,-0.207c-20.71,-19.89 -119.45,-119.204 -119.45,-119.204c-0.485,-0.484 -0.9,-1.023 -1.239,-1.607l0.008,0.012l-0.047,-0.081l-0.053,-0.048l0.032,0.012l-0.002,-0.003l-0.035,-0.013c-24.685,-22.661 -38.782,-55.774 -38.782,-91.302c0,-65.094 46.835,-118.088 104.442,-118.088c44.527,0 81.278,41.399 96.151,60.918l0.407,0.534l0.407,-0.534c14.873,-19.519 51.624,-60.918 96.151,-60.918c57.608,0 104.442,52.994 104.442,118.088c0,29.659 -9.845,57.973 -27.771,79.925l-0.033,0.039l-0.023,0.045c-0.363,0.685 -0.831,1.315 -1.4,1.876l-0.169,0.069l-0.593,0.282c0.282,0 0.552,-0.12 0.742,-0.33c-1.439,1.593 -2.724,2.838 -4.025,4.065l-1.669,1.621l-160.484,160.426c-1.54,1.539 -3.558,2.31 -5.575,2.31l-0.034,-0c-0.529,-0 -1.045,-0.052 -1.543,-0.152c-1.422,-0.271 -2.811,-0.908 -3.773,-1.91c-1.582,-1.444 -2.574,-3.521 -2.574,-5.829c0,-2.436 1.106,-4.616 2.844,-6.064c27.385,-28.092 161.949,-161.834 161.949,-161.834c0.006,-0.006 0.011,-0.011 0.017,-0.017c0.859,-0.819 1.727,-1.621 2.521,-2.531l0.003,0.006l0,-0.001l-0.002,-0.006l0.025,-0.029l0.02,-0.032c0.169,-0.265 0.36,-0.523 0.566,-0.768l-0.008,0.011c-0.042,0.052 -0.074,0.105 -0.098,0.158c-0.137,0.269 -0.145,0.589 -0.015,0.87c0.072,0.157 0.182,0.289 0.316,0.386l0.002,-0.002c-0.133,-0.097 -0.243,-0.228 -0.316,-0.384c-0.126,-0.271 -0.122,-0.58 0.001,-0.843l0.012,-0.027c0.033,-0.068 0.075,-0.132 0.125,-0.191l0.013,-0.015c16.233,-19.296 25.18,-44.555 25.18,-71.124c0,-56.435 -39.799,-102.317 -88.673,-102.317c-19.342,-0 -37.559,10.073 -52.472,22.223c-22.3,18.168 -37.208,40.955 -37.455,41.334l-0.834,0.453l-0.005,0.004l0.84,-0.457c-1.456,2.248 -4.047,3.359 -6.632,3.359c-2.585,-0 -5.176,-1.111 -6.631,-3.358l0.835,0.454l0.004,0.002l-0.84,-0.457c-0.246,-0.38 -15.155,-23.166 -37.454,-41.334c-14.913,-12.15 -33.13,-22.223 -52.472,-22.223c-48.874,-0 -88.673,45.881 -88.673,102.317c0,31.98 12.932,61.611 35.481,81.303c0,-0 0.001,0.001 0.002,0.002c0.761,0.669 1.386,1.469 1.832,2.347l0.037,0.073l117.408,117.173c1.763,1.448 2.888,3.644 2.888,6.1c0,4.355 -3.536,7.89 -7.891,7.89c-2.245,-0 -4.272,-0.94 -5.71,-2.447Zm-119.581,-120.788c0.025,0.031 0.049,0.063 0.074,0.094c-0.164,0.112 -0.36,0.175 -0.564,0.175c0,-0 0.244,-0.092 0.49,-0.269Zm-1.096,-0.213l0.006,0.004l0.313,0.121l-0.319,-0.125Zm13.87,-6.414l-0.071,-0.071c0.203,-0.173 0.372,-0.408 0.361,-0.708c0.011,0.153 -0.012,0.308 -0.073,0.455c-0.051,0.124 -0.125,0.233 -0.217,0.324Zm318.476,-3.216l0.235,-0.255l0.291,0.681c-0.256,-0 -0.496,-0.098 -0.677,-0.265l0.151,-0.161Zm0.303,-0.329l-0.01,0.01l0.293,0.681l-0.283,-0.691Zm1.571,-1.073l-0.061,-0.128l-0.02,-0.004l0.081,0.132Zm-11.763,-8.369c-0.159,-0.516 -0.372,-1.093 -0.496,-0.968l-0.058,0.063c-0.058,0.069 -0.105,0.144 -0.141,0.223c-0.171,0.409 0.124,0.8 0.422,1.068c0.085,-0.131 0.177,-0.26 0.273,-0.386Zm-155.195,-110.807c-0.068,0.083 -0.138,0.163 -0.211,0.242c0.271,0.186 0.582,0.22 0.602,0.222c-0.015,-0.018 -0.19,-0.234 -0.391,-0.464Z" style="fill-rule:nonzero;"/>
					<path d="M214.816,402.321c-0.088,-0.064 -0.171,-0.132 -0.248,-0.207c-20.71,-19.89 -119.45,-119.204 -119.45,-119.204c-0.485,-0.484 -0.9,-1.023 -1.239,-1.607l0.008,0.012l-0.047,-0.081l-0.053,-0.048l0.032,0.012l-0.002,-0.003l-0.035,-0.013c-24.685,-22.661 -38.782,-55.774 -38.782,-91.302c0,-65.094 46.835,-118.088 104.442,-118.088c44.527,0 81.278,41.399 96.151,60.918l0.407,0.534l0.407,-0.534c14.873,-19.519 51.624,-60.918 96.151,-60.918c57.608,0 104.442,52.994 104.442,118.088c0,29.659 -9.845,57.973 -27.771,79.925l-0.033,0.039l-0.023,0.045c-0.363,0.685 -0.831,1.315 -1.4,1.876l-0.169,0.069l-0.593,0.282c0.282,0 0.552,-0.12 0.742,-0.33c-1.439,1.593 -2.724,2.838 -4.025,4.065l-1.669,1.621l-160.484,160.426c-1.54,1.539 -3.558,2.31 -5.575,2.31l-0.034,-0c-0.529,-0 -1.045,-0.052 -1.543,-0.152c-1.422,-0.271 -2.811,-0.908 -3.773,-1.91c-1.582,-1.444 -34.396,-34.318 -35.834,-35.825Zm-119.581,-120.788c0.025,0.031 0.049,0.063 0.074,0.094c-0.164,0.112 -0.36,0.175 -0.564,0.175c-0,0 0.244,-0.092 0.49,-0.269Zm-1.096,-0.213l0.006,0.004l0.313,0.121l-0.319,-0.125Zm332.346,-9.63l0.235,-0.255l0.291,0.681c-0.256,0 -0.496,-0.098 -0.677,-0.265l0.151,-0.161Zm0.303,-0.329l-0.01,0.01l0.293,0.681l-0.283,-0.691Zm1.571,-1.073l-0.061,-0.128l-0.02,-0.004l0.081,0.132Z" style="fill-rule:nonzero;"/>
				</svg>
				<span class="name-btn-product hidden hide text-remove">{l s='Remove from Wishlist' d='Modules.Leofeature.Shop'}</span>
				<span class="name-btn-product text-add">{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}</span>
			</span>
		</a>
	{/if}
</div>

{else}

	<div class="wishlist">
	{if isset($wishlists) && count($wishlists) > 1}
		<div class="dropdown leo-wishlist-button-dropdown">
		  <button class="leo-wishlist-button dropdown-toggle show-list btn-primary btn-product btn{if $added_wishlist} added{/if}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-id-wishlist="{$id_wishlist}" data-id-product="{$leo_wishlist_id_product}" data-id-product-attribute="{$leo_wishlist_id_product_attribute}">
			<span class="leo-wishlist-bt-loading cssload-speeding-wheel"></span>
			<span class="leo-wishlist-bt-content">
				<i class="icon-btn-product icon-wishlist material-icons">&#xE87D;</i>
				<span class="name-btn-product">{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}</span>
			</span>
			
		  </button>
		  <div class="dropdown-menu leo-list-wishlist leo-list-wishlist-{$leo_wishlist_id_product}">
			{foreach from=$wishlists item=wishlists_item}
				<a href="javascript:void(0)" class="dropdown-item list-group-item list-group-item-action wishlist-item{if in_array($wishlists_item.id_wishlist, $wishlists_added)} added {/if}" data-id-wishlist="{$wishlists_item.id_wishlist}" data-id-product="{$leo_wishlist_id_product}" data-id-product-attribute="{$leo_wishlist_id_product_attribute}" title="{if in_array($wishlists_item.id_wishlist, $wishlists_added)}{l s='Remove from Wishlist' d='Modules.Leofeature.Shop'}{else}{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}{/if}">{$wishlists_item.name}</a>			
			{/foreach}
		  </div>
		</div>
	{else}
		<a class="leo-wishlist-button btn-product btn-primary btn{if $added_wishlist} added{/if}" href="javascript:void(0)" data-id-wishlist="{$id_wishlist}" data-id-product="{$leo_wishlist_id_product}" data-id-product-attribute="{$leo_wishlist_id_product_attribute}" title="{if $added_wishlist}{l s='Remove from Wishlist' d='Modules.Leofeature.Shop'}{else}{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}{/if}">
			<span class="leo-wishlist-bt-loading cssload-speeding-wheel"></span>
			<span class="leo-wishlist-bt-content">
				<i class="icon-btn-product icon-wishlist material-icons">&#xE87D;</i>
				<span class="name-btn-product hidden hide text-remove">{l s='Remove from Wishlist' d='Modules.Leofeature.Shop'}</span>
				<span class="name-btn-product text-add">{l s='Add to Wishlist' d='Modules.Leofeature.Shop'}</span>
			</span>
		</a>
	{/if}
</div>

{/if}




