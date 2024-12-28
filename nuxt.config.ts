// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  modules: ["@inkline/plugin/nuxt", "vue3-carousel-nuxt"],
  devtools: { enabled: true },
  vite: {
    server: {
      proxy: {
        "/api": {
          target: "http://localhost:8080",
          changeOrigin: true,
        },
      },
    },
  },
  inkline: {
    globals: {
      colorMode: "light",
    },
  },
  nitro: {
    compressPublicAssets: true,
  },
  runtimeConfig: {
    public: {
      buildDate: process.env.BUILD_DATE,
    },
  },
});
