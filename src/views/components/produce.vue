<template>
    <div class="produce">
        <ul>
            <li v-for="produce in producelist" :key="produce.title">
                <img :src="produce.img"/>
                <h2>{{produce.title}}</h2>
                <p>{{produce.introduction}}</p>
                <p><a :href="produce.address" target="_banck">{{produce.address}}</a></p>
                <p class="develop-time">开发时间：{{produce.developTime}}</p>
                <p><span class="tag" v-for="tag in produce.tags" :key="tag">{{tag}}</span></p>
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
        img: './static/img/personal.png',
        introduction: '个人简介、个人资料等等。运用vue构建。',
        address: 'https://gitee.com/DOM-undefined/FullStackProject',
        developTime: '2017.12',
        tags: ['Vue', 'Webpack', 'Less']
      }, {
        title: '报表管理系统',
        img: './static/img/report.png',
        introduction: 'OA系统流程数据报表生成及个性化模板定制。运用vue、Element构建。',
        address: 'https://gitee.com/DOM-undefined/ReportSystem',
        developTime: '2018.01',
        tags: ['Vue', 'Webpack', 'Element', 'Java']
      }, {
        title: '离线音乐播放器',
        img: './static/img/music.png',
        introduction: '采用Hybrid开发的离线本地音乐播放器。Android原生与HTML5相结合。',
        address: 'https://gitee.com/buffermaker/MusicPlay',
        developTime: '2017.03',
        tags: ['MUI', 'Java', 'Vue']
      }, {
        title: '图书借阅管理系统',
        img: './static/img/bbms.png',
        introduction: '学校图书信息、借阅信息等综合管理系统。Java与JQuery开发。',
        address: 'https://gitee.com/DOM-undefined/BBMSystem',
        developTime: '2016.12',
        tags: ['JQuery', 'EasyUI', 'Java']
      }]
    }
  }
}
</script>

<style lang="less" scoped>
    .produce{

        ul{
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            text-align: left;

            

           li{
                list-style: none;
                width: 48%;
                border: 1px solid #ccc;
                margin: 0.5rem 0;
                padding: 1rem;
                box-sizing: border-box;
                background-color: #f9f9f9;

                @media (max-width: 768px) {
                    width: 100%;
                }

                img{
                    width: 100%;
                    height: 14.5rem;
                }

                h2{
                    font-size: 1.2rem;
                    padding: .4rem 0;
                    font-weight: 600;
                    margin-top: .5rem;
                    margin-bottom: .1rem;
                    
                }

                a, a:active{
                    line-height: 20px;
                    height: 20px;
                    font-size: 1.1rem;
                    text-decoration: none;
                    border-bottom: 1px solid #00c339;
                    color: #45b29a;
                }

                .develop-time{
                    color: #a4a0a0;
                }
            }
        }
    }
</style>
