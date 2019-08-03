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
            <li v-if="!!module.components" :is="module.components"></li>
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
            content: '我叫李俊廣，一位码农界的萌新。<br/>我来自刘三姐的故乡，额，如果你不懂的话，我也不会告诉你。<br/>我曾今一直都是从事Java相关项目开发，直到有一天，我发现我对前端越来越感兴趣，所以就误入前端大坑；但是我还是想成为全栈工程师。<br>程序员，屌丝届的一员；各位大佬，快来罩我吧！'
          }, {
            id: 1,
            title: '我的作品',
            link: 'produce',
            content: '',
            components: 'produceList'
          }, {
            id: 2,
            title: '我的经历',
            link: 'experience',
            content: '不尝试一下，你永远不知道你有多厉害。<br/>没有最好的程序员，只有最好的Bug生产员。<br/>不想吃天鹅肉的癞蛤蟆，不是好的癞蛤蟆。<br/>'
          }, {
            id: 3,
            title: '励志名言',
            link: '',
            content: '早起的虫子，被鸟吃。<br/>珍爱生命，远离加班。<br/>好好学习，天天向上。<br/>我们的目标是什么？多点Bug！<br/>'
          }, {
            id: 4,
            title: '联系方式',
            link: '',
            content: 'QQ：852623937<br/> 邮箱：852623937@qq.com<br/> 电话：18520896318<br/>'
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
