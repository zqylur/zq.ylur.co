import Vue from 'vue';
import ZQ from './ZQ.vue';

Vue.config.productionTip = false;

new Vue({
  render: h => h(ZQ),
}).$mount('#app');
