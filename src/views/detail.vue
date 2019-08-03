<template>
    <div class="content">
        <div class="header">
            <a href="javaScript:void(0);" @click="backHome"><span>&lt;</span>返回</a>
            <h2>{{title}}</h2>
            <div></div>
        </div>
        <div class="container">
            <li :is="page"></li>
        </div>
    </div>
</template>

<script>
import introduction from '@/views/components/introduction.vue'
import produce from '@/views/components/produce.vue'
import experience from '@/views/components/experience.vue'

export default {
  props: {
    page: {
      type: String,
      require: true
    },
    title: {
      type: String,
      require: true,
      default: sessionStorage.getItem('title')
    }
  },
  data() {
    return {

    }
  },
  methods: {
    backHome: function() {
      this.$router.push('/')
    }
  },
  components: {
    introduction,
    produce,
    experience
  }
}
</script>

<style lang="less" scoped>
    .content{
        max-width: 640px;
        margin: 0 auto;
        background-color: #fff;

        .header{
            display: flex;
            background-color: #45b29a;
            height: 40px;
            line-height: 40px;

            a{
                flex: 1;
                padding-left: .6rem;
                text-align: left;
                text-decoration: none;
                color: #fff;

                >span{
                    margin-right: .3rem;
                }
            }

            h2{
                flex: 1;
                margin: 0;
                text-align: center;
                font-weight: 400;
                color: #fff;
                font-size: 1.25rem;
            }

            div{
                flex: 1;
            }
        }
    
        .container{
            padding: 1rem 1.5rem;
        }
    }
    
</style>

