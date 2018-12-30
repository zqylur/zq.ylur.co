import Vue from 'vue';
import VueRouter from 'vue-router';

import ZQ from './ZQ.vue';
import { About, Contact, Home, Resume } from './components/routes';

Vue.config.productionTip = false;
Vue.use(VueRouter);

document.title = 'ZqYlur';

const router = new VueRouter({
  mode: 'history',
  routes: [
    { path: '/', component: Home },
    { path: '/about', component: About },
    { path: '/contact', component: Contact },
    { path: '/resume', component: Resume },
  ],
});

new Vue({
  render: h => h(ZQ),
  router,
}).$mount('#app');
