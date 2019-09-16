<template>
	<div>
      <ul class="produceList">
          <li v-for="produce in producelist" :key="produce.id">
              <a :href="produce.address" target="_banck">{{produce.title}}</a>
              <h2>{{produce.introduction}}</h2>
          </li>
      </ul>
  </div>
</template>

<script>
export default {
  props: {
    list: {
      type: Array,
      default: () => []
    }
  },
  data() {
    return {
      producelist: this.list
    }
  },
  mnethods: { },
  watch: {
    list(val) {
      this.producelist = val
    }
  }
}
</script>

<style lang="less" scoped>
    .produceList{
        padding: 0;
        margin: 0;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        text-align: left;

        li{
            list-style: none;
            width: 46%;
            
            @media (max-width: 768px ) {
                width: 100%
            }

            a {
                font-size: 1.2rem;
                text-decoration: none;
                color: #45b29a;
                padding-bottom: .2rem;
                border-bottom: 1px solid #45b29a;
            }

            h2 {
                font-size: 1.15rem;
                line-height: 1.2em;
                font-weight: 400;
            }
        }
    }
</style>
