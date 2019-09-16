<template>
    <div class="introduction">
        <div class="base">
            <div class="title"><span class="title-info"><svg class="icon" aria-hidden="true"><use xlink:href="#icon-base"></use></svg>个人信息</span><hr/></div>
            <ul>
                <li v-for="item in info.base" :key="item.label">
                    <span class="label">{{item.label}}</span>：<span class="value">{{item.value}}</span>
                </li>
            </ul>
        </div>
        <div class="education">
            <div class="title"><span class="title-info"><svg class="icon" aria-hidden="true"><use xlink:href="#icon-education"></use></svg>教育经历</span><hr/></div>
            <p v-for="item in info.education" :key="item.message">{{item.message}}</p>
        </div>
        <div class="technical">
            <div class="title"><span class="title-info"><svg class="icon" aria-hidden="true"><use xlink:href="#icon-technical"></use></svg>专业技能</span><hr/></div>
            <p v-for="item in info.technical" :key="item.message">{{item.message}}</p>
        </div>
        <div class="evalute">
            <div class="title"><span class="title-info"><svg class="icon" aria-hidden="true"><use xlink:href="#icon-evalute"></use></svg>自我评价</span><hr/></div>
            <p v-for="item in info.evalute" :key="item.message">{{item.message}}</p>
        </div>
    </div>
</template>
<script>
export default {
  data() {
    return {
      info: {
        base: [
          { label: '姓名', value: '李俊廣' },
          { label: '性别', value: '男' },
          { label: '籍贯', value: '广西河池宜州' },
          { label: '名族', value: '壮族' },
          { label: '学历', value: '本科' },
          { label: '生日', value: '10.07' },
          { label: '年龄', value: '23' },
          { label: '身高', value: '175cm' },
          { label: 'QQ', value: '852623937' },
          { label: '邮箱', value: '852623937@qq.com' }
        ],
        education: [
          { message: '2013.09 - 2017.06  就读于广西民族大学 软件工程专业' }
        ],
        technical: [
          { message: '熟练掌握CSS3+HTML5+JavaScript等前端技术，能快速的完成静态页面的构建;' },
          { message: '熟悉CSS预处理器LESS/SASS的基本用法，对前端模块化AMD(RequestJS)、CMD开发有一定的认知;' },
          { message: '熟悉Webpack,Rollup,Gulp等前端工程化构建框架;' },
          { message: '熟悉Git,SVN,TFS,teambition团队协作与代码管理工具;' },
          { message: '熟悉Ajax、DOM结构操作技术，掌握面向对象编程思想，了解浏览器内部工作原理和必备的浏览器开发调试工具和HTTP网络协议;' },
          { message: '熟练掌握JQuery、JQuery-EasyUI、Bootstrap、Vue全家桶并了解AngularJS等前端类库和框架;' },
          { message: '基于NodeJS平台结合Webpack、Mock、Element、Vue全家桶等技术栈进行前端开发与维护，并了解基于Gulp等前端自动化打包库的相关项目配置;' },
          { message: '熟悉MUI移动端开发框架，对Android开发有一定的认知，能快速上手;' },
          { message: '熟练掌握Java服务器端相关语言和基于关联关系模型数据库，如Mysql、Sqlserver，并对Oracle有一定的了解;' },
          { message: '熟悉Spring+SpringMVC+Hibernate等服务器端快速开发框架和相关开发规范，并熟知基于REST标准API的开发与设计;' },
          { message: '使用NodeJS做过一些爬虫、服务器中间层推送服务等相关工作;' },
          { message: '常用的IDE：Sublime、VSCode、HBuilder、Eclipse、MyEclipse等;' },
          { message: '其他常用工具：Photoshop、Git/Svn等。' }
        ],
        evalute: [
          { message: '热爱前端编程，掌握扎实的编程技能，具有良好的自学能力，对新技术拥有强烈的好奇心和求知欲;' },
          { message: '工作中对代码质量要求极高,实现功能的同时美观,简洁,易懂;' },
          { message: '工作效率高,自我学习能力强;' },
          { message: '有全栈基础,较强的综合能力' },
          { message: '具有良好的沟通能力和团队协作精神，富有工作激情、责任感和抗压能力。' }
        ]
      }
    }
  }
}
</script>
<style lang="less" scoped>
    .introduction{
        text-align: left;
        font-size: 1rem;

        .title{
            display: flex;
            align-items: center;
            margin: .35rem 0;

            .title-info{
                padding-right: .5rem; 
                font-size: 1.15rem;
                font-weight: 600;
                color: #ff6d1f;
            }

            hr{
                flex: 1;
                border: none;
                border-top: 1px solid #ccc;
                transform: scaleY(0.5);
            }
        }
        

        .base{
            
            ul{
                display: flex;
                flex-wrap: wrap;
                padding-left: 2rem;
            }

            li{
                list-style: none;
                box-sizing: border-box;
                width: 50%;
                padding: .25rem;
            }
            @media (max-width: 768px) {
                li {
                    width: 100%;
                }
            }
        }

        .education, .technical, .evalute{
            p{
                padding-left: 2rem;
                letter-spacing: 0.05rem;
            }
        }
    }
</style>
