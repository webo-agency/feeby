module.exports = {
  future: {
    purgeLayersByDefault: true,
  },
  purge: {
    enabled: process.env.NODE_ENV === 'production',
    content: [
      'assets/**/*.{vue,js,ts,jsx,tsx,tpl,yml,css,scss}',
      'config/**/*.{vue,js,ts,jsx,tsx,tpl,yml}',
      'modules/**/*.{vue,js,ts,jsx,tsx,tpl,yml}',
      'templates/**/*.{vue,js,ts,jsx,tsx,tpl,yml}',
      'nuxt.config.js'
    ],
    options: {
      whitelist: [''],
    }
  },
  darkMode: false,
  theme: {
    screens: {
      'phone': '320px',
      'phone-wide': '480px',
      'phablet': '560px',
      'tablet-small': '640px',
      'tablet': '768px',
      'tablet-wide': '1024px',
      'desktop': '1248px',
      'desktop-wide': '1440px',
      'full-hd': '1680px',
    },
    extend: {
      width: {
        "side": "467px",
        "miniature": "102px"
      },
      margin: {
        'miniature': '102px',
      },
      colors: {
        'main': '#DF1A5B',
        gray: {
          default: '#F8F8F8',
          main: '#181828',
        },
      },
      backgroundImage: {
        'newsletter-plane': "url('../img/newsletter1.svg')",
        'newsletter-dashed': "url('../img/newsletter2.svg')",
        'header-brush': "url('../img/headers_under.svg')",
       },
      backgroundSize: {
       'smaller': '70px',
       'small': '100px',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
  corePlugins: {
   container: false,
   preflight: false,
  }
};