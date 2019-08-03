import Vue from 'vue'
import Router from 'vue-router'

import personalPage from '@/views/index'
import detailPage from '@/views/detail'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'personalPage',
      component: personalPage,
      children: []
    }, {
      path: '/:page',
      name: 'detailPage',
      component: detailPage,
      props: true
    }
  ]
})
