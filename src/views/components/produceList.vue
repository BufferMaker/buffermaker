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
  data() {
    return {
      producelist: [{
        title: '个人网站',
        address: 'http://www.buffermaker.top/',
        introduction: '个人简介、个人资料等等。运用vue构建。'
      }, {
        title: '报表管理系统',
        address: 'https://gitee.com/DOM-undefined/ReportSystem',
        introduction: 'OA系统流程数据报表生成及个性化模板定制。运用vue、Element构建。'
      }, {
        title: '离线音乐播放器',
        address: 'https://gitee.com/buffermaker/MusicPlay',
        introduction: '采用Hybrid开发的离线本地音乐播放器。Android原生与HTML5相结合。'
      }, {
        title: '图书借阅管理系统',
        address: 'https://gitee.com/DOM-undefined/BBMSystem',
        introduction: '学校图书信息、借阅信息等综合管理系统。Java与JQuery开发。'
      }]

    }
  },
  mnethods: {

  }
}
</script>

<style lang="less" scoped>
    .produceList{
        padding: 0;
        margin: 0;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
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
