{* 
* @Module Name: AP Page Builder
* @Website: apollotheme.com - prestashop template provider
* @author Apollotheme <apollotheme@gmail.com>
* @copyright Apollotheme
* @description: ApPageBuilder is module help you can build content for your shop
*}
<!-- @file modules\appagebuilder\views\templates\hook\ApBlockCarouselItem -->
{* tablet:block border-1 border-2 border-main-dark tablet:flex hover:bg-main-dark hover:text-white pb-10 py-8 max-w-screen-full-hd classes used in blog swiper section*}


	{if isset($formAtts.title) && $formAtts.title}
		<h4 class="title_block">{$formAtts.title|escape:'html':'UTF-8'}</h4>
	{/if}
	{if isset($formAtts.sub_title) && $formAtts.sub_title}
		<div class="sub-title-widget">{$formAtts.sub_title nofilter}</div>
	{/if}
	{if isset($formAtts.descript)}
		<div>{$formAtts.descript|escape:'html':'UTF-8'}</div>
	{/if}

	<div class="swiper-about overflow-hidden" data-about-swiper>
		<div class="swiper-wrapper">
		{$Num=array_chunk($formAtts.slides, $itemsperpage)}
		{foreach from=$Num item=sliders name=val}

			<div class="swiper-slide">
			{foreach from=$sliders item=slider key=i name="sliders"}
				
					<div class="w-[50px] tablet:w-[70px] aspect-square mb-6 bg-gray-1000 rounded-md ">
					{if isset($slider.image) && !empty($slider.image)}
						<img  src="{$slider.image|escape:'html':'UTF-8'}" alt="{if isset($slider.title)}{$slider.title|escape:'html':'UTF-8'}{/if}"/>
					{else}
						{if isset($slider.image_link) && !empty($slider.image_link)}
							<img  src="{$slider.image_link|escape:'html':'UTF-8'}" alt="{if isset($slider.title)}{$slider.title|escape:'html':'UTF-8'}{/if}"/>
						{/if}
					{/if}
					</div>
				<div class="p-5 bg-white flex flex-col justify-between h-3/6 phablet:h-1/5 ">
				
					{if isset($slider.title) && !empty($slider.title)}
						<h2 class="mb-6 font-normal">{$slider.title|escape:'html':'UTF-8' nofilter}</h2>
					{/if}
					{if isset($slider.sub_title) && !empty($slider.sub_title)}
						<p class="uppercase hover:text-main transition font-body font-normal text-[10px] tablet:text-sm">{$slider.sub_title|escape:'html':'UTF-8' nofilter}<i class="ti-arrow-right ml-2"></i></p>
					{/if}
				</div>
				{if isset($slider.descript) && !empty($slider.descript)}
					<div class="text-main-dark text-sm tablet:text-base font-light font-body">{$slider.descript nofilter}{* HTML form , no escape necessary *}</div>
				{/if}


			{/foreach}
			</div>

		{/foreach}
		</div>
	</div>







