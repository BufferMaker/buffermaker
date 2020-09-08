<template>
    <div class="content">
        <!-- 标题 -->
        <div class="head">
            <div class="icon"></div>
            <h2 class="name">你好，我是李俊廣</h2>
            <h3 class="introduction">在人海中漂流的码农</h3>
        </div>
        <!-- End 标题 -->
        
        <!-- 内容模块 -->
        <module-content v-for="module in modules" :key="module.id" :title="module.title" :link="module.link" :content="module.content">
            <li v-if="!!module.components" :is="module.components" v-bind="module.props || {}"></li>
        </module-content>
        <!-- End 内容模块 -->
    </div>
</template>

<script>
    import moduleContent from '@/views/components/moduleContent.vue'
    import produceList from '@/views/components/produceList.vue'

    export default {
      data() {
        return {
          introduction: '',
          modules: [{
            id: 0,
            title: '个人简介',
            link: 'introduction',
            content: `说道我的来头，整个码农界，无人不知无人不晓的Bug天王是也！！·····(此处意淫一万字)<br/>
                      我叫李俊廣，来自刘三姐的故乡，额，如果你不懂的话，我也不会告诉你。<br/>
                      我曾今一直都是从事全栈相关项目开发，直到有一天，我发现我变强了也变秃了，所以我决定舍弃曾今的辉煌，做个前端工程师吧。<br/>
                      前端武学已经达到炉火纯青的造化，就等着与你勇闯一片天涯！`
          }, {
            id: 1,
            title: '上线项目',
            link: '',
            content: '',
            components: 'produceList',
            props: {
              list: [{
                title: '红旗小程序',
                address: 'JavaScript: void(0);',
                image: '~@/../static/img/hq-mini.png',
                alt: '红旗空间小程序二维码',
                introduction: '红旗车展、预约试驾、线上直播等推广活动产品'
              }, {
                title: '屈臣氏Media Platform',
                address: 'http://gimcdev.gimcyun.com/frontend/',
                introduction: '屈臣氏广告媒体投放平台'
              }, {
                title: '洪湾渔港交易平台',
                address: 'https://www.hongwanyg.com/',
                introduction: '海鲜卖家和买家撮合交易的电子商务平台'
              }, {
                title: '洪湾渔港交易微信公众平台',
                address: 'https://wx.hongwanyg.com/?from=singlemessage#/index',
                introduction: '海鲜卖家和买家撮合交易的电子商务平台H5端'
              }, {
                title: '海约海钓团建小程序',
                address: 'JavaScript: void(0);',
                image: '~@/../static/img/hy-mini.png',
                alt: '海约海钓团建小程序二维码',
                introduction: '周边海岛美宿、观光、亲子研学、海鲜、海钓等旅游产品及活动的相关服务'
              }]
            }
          }, {
            id: 2,
            title: '业余作品',
            link: 'produce',
            content: '',
            components: 'produceList',
            props: {
              list: [{
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
          }, {
            id: 3,
            title: '我的经历',
            link: 'experience',
            content: '不尝试一下，你永远不知道你有多厉害。<br/>没有最好的程序员，只有最好的Bug生产员。<br/>不想吃天鹅肉的癞蛤蟆，不是好的癞蛤蟆。<br/>'
          }, {
            id: 4,
            title: '励志名言',
            link: '',
            content: '早起的虫子，被鸟吃。<br/>珍爱生命，远离加班。<br/>好好学习，天天向上。<br/>我们的目标是什么？多点Bug！<br/>'
          }, {
            id: 5,
            title: '联系方式',
            link: '',
            content: 'QQ：852623937<br/> 邮箱：www.buffermaker@gmail.com<br/> 电话：(+86)185-2089-6318<br/>'
          }]
        }
      },
      methods: {

      },
      components: {
        moduleContent,
        produceList
      }
    }
</script>

<style lang="less" scoped>
    .content{
        max-width: 640px;
        padding: 3rem;
        margin: 0 auto;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 1px 1px 5px #938f8fb3;

        @media (max-width: 768px) {
            padding: 1rem;
        }

        .head{
            font-family: '宋体';

            .icon{
                width: 150px;
                height: 150px;
                margin: 0 auto;
                background-image: url(../../static/img/icon.png);
                border-radius: 50%;
                background-size: 100%;
            }

            .name{
                font-size: 1.65rem;
            }

            .introduction{
                font-size: 1.25rem;
                color: #0000004d;
            }
        }
    }
    
</style>
