<template>
    <div class="experience" :class="!showCompanyFlag?'time-graph-margin':''">
        <div class="change-flag"><span @click="showCompany"><svg class="icon" aria-hidden="true"><use xlink:href="#icon-14"></use></svg>{{!showCompanyFlag?'工作经验':'个人经历'}}</span></div>
        <div class="time-graph" v-show="!showCompanyFlag">
            <ul>
                <li v-for="item in experience" :key="item.year">
                    <ul>
                        <li>
                            <span :style="flagAnimationDelay()" class="flag">{{item.year}}<i class="icon iconfont icon-year"></i></span>
                        </li>
                        <li v-for="_incident in item.incident" :key="_incident.time">
                            <span :style="flagAnimationDelay()" class="flag">{{_incident.time}}<i class="icon iconfont icon-month"></i></span>
                            <span :style="flagAnimationDelay()" v-if="_incident.describe.trim().length > 0" class="describe">{{_incident.describe}}</span>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="company" v-for="company in compnayList" :key="company.title" v-show="showCompanyFlag">
            <div class="title"><span class="title-info"><i class=""></i>{{company.name}}</span><hr/></div>
            <div class="company-content">
                <div class="job-title"><h2>{{company.job}}</h2><div>{{company.startTime}} - {{company.endTime}}</div></div>
                <p class="responsibility">主要职责：{{company.responsibility}}</p>
                <div>
                    <span class="tag" v-for="tag in company.tags" :key="tag">{{tag}}</span>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
let flagItems = 0

export default {
  data() {
    return {
      showCompanyFlag: false,
      experience: [{
        year: '2015年',
        incident: [{
          time: '11月',
          describe: '经过学校老师的推荐，成功进入了一家外包公司实习（广西深睿科技有限公司）。'
        }, {
          time: '12月',
          describe: '在公司中第一次接触项目，痛并快乐着（好多东西都不懂- -）。'
        }]
      }, {
        year: '2016年',
        incident: [{
          time: '1月',
          describe: '终于把个人任务做完了（第一次感觉CV工程师的厉害之处0 0）。'
        }, {
          time: '3月',
          describe: '人生第一个项目上线了，内心那个激动啊（我估计我开发的那个NodeJS推送服务现在还在跑）'
        }, {
          time: '6月',
          describe: '继续在公司跟着做项目，然而我竟然被安排去做前端了（前端掉坑之旅）'
        }, {
          time: '10月',
          describe: '配合项目成功上线！！这次是关于某教育机构的OA管理系统，还要移动端适配（在移动端神坑中摸爬滚打，终于熬出来了）'
        }, {
          time: '12月',
          describe: '参加了蓝桥杯大赛，一不小心在省赛中拿了个一等奖，获得去参加国赛的资格（全程一脸懵逼）'
        }]
      }, {
        year: '2017年',
        incident: [
          {
            time: '3月',
            describe: '成功把毕业设计做完，采用Hybrid方式开发一款离线音乐播放器App，我自己都嫌弃（真的太low了，但是我也是我第一次用Vue全家桶）'
          }, {
            time: '5月',
            describe: '参加国赛，去了北京（那个激动啊），然后也是一脸懵逼获得了个三等奖（其实我的目的是去旅游哈哈哈~~~）'
          }, {
            time: '6月',
            describe: '毕业了，在老师的在此推荐下，我以全栈工程师的身份进入了人生第一家公司（这里指以正式员工身份呆着，对此公司的评价此处省略一万字。。）'
          }, {
            time: '10月',
            describe: '在工作要求下，采用前后端分离的方式构建了对接该公司OA系统的辅助系统->报表系统，主要是对OA系统中流程数据做定制化报表模板并提供用户浏览（vue全家桶- -又来了）'
          }
        ]
      }, {
        year: '2018年',
        incident: [
          {
            time: '2月',
            describe: '成功拿到离职证明（主要是因为这个工作氛围让我受不了，说多都是泪~~~~~~~~）'
          }, {
            time: '6月',
            describe: '以前端工程师的身份加入华风海洋大家庭，并参与康源医疗管理系统（基于Vue全家、ElementUI开发的）'
          }, {
            time: '9月',
            describe: '康源医疗管理系统上线并交付用户，紧接着被安排到重构公司一款自主产品<海岛团建游>的后台管理系统；管理系统是基于Ext框架开发，然后觉得采用vue进行重构（此处小声逼逼，之前的代码真是杂乱无章，怪不得要重构）'
          }, {
            time: '9月',
            describe: '海约后台管理系统重构至中期，因为项目需要临时被分配至渔港项目组，进行洪湾渔港交易平台的PC端开发'
          }, {
            time: '11月',
            describe: '洪湾渔港交易平台一期定版，紧接着需要开发基于微信工作平台的H5端（能力越大责任越大啊~~~~~）'
          }, {
            time: '12月',
            describe: '洪湾渔港交易平台一期交付用户并上线，开始进入一期维护阶段'
          }
        ]
      }, {
        year: '2019年',
        incident: [
          {
            time: '3月',
            describe: '客户该需求，订单模块业务大量调整，oh~全是我负责的PC端和移动端....（幸亏我又先见之明，留了一手，封装过订单逻辑，不然就栽跟头了，果然姜还是老的辣）'
          },
          {
            time: '5月',
            describe: '公司自主产品海岛团建游需要在微信端大力推广，决定开发小程序....（还是那句话能力越大责任越大）'
          }, {
            time: '6月',
            describe: '经过一个半月的奋战，小程序上线。持续进行后期维护跟进工作'
          }, {
            time: '9月',
            describe: '结束了华风大家庭的学习生活之旅，虽然疲惫但很充实。未完待续·····'
          }
        ]
      }],
      compnayList: [{
        name: '广东华风海洋信息系统服务有限公司',
        job: '前端工程师',
        startTime: '2018.06',
        endTime: '2019.09',
        responsibility: '负责公司洪湾渔港B2B交易平台的PC端，H5端项目前端部分基本架构与技术方案拟定，订单中心、商品发布等模块开发;自主产品海岛团建小程序开发与维护;期间也参与开发与设计公司内部项目通用组件库',
        tags: ['Html5', 'CSS3', 'JavaScript', 'Vue全家桶', 'NodeJS', 'SCSS', 'Webpack', '小程序', 'ElementUI', 'VantUI', 'MintUI']
      }, {
        name: '昂纳信息技术(深圳)有限公司',
        job: '全栈工程师',
        startTime: '2017.07',
        endTime: '2018.02',
        responsibility: '负责公司OA系统的二次开发与维护，对原系统Java底层功能的优化和改进，并采用VueJS等前端技术独立开发了一套可配置的模板报表系统与OA系统对接集成，主要涉及项目前端开发。工作之余学习了相关Web前端的各种新兴技术Webpack、Canvas等',
        tags: ['Java', 'Html5', 'CSS3', 'JavaScript', 'Jquery', 'NodeJS', 'Vue', 'Webpack', 'Less', 'Sqlserver', 'ElementUI']
      }, {
        name: '广西深睿科技有限公司',
        job: '全栈工程师',
        startTime: '2015.12',
        endTime: '2017.06',
        responsibility: '负责公司的外包Web项目的整体开发，运用Nodejs、Java、JQuery、MUI、EasyUI等技术并采用前端端分离的开发模式进行协作。主要涉及最多的是服务的端的开发，其中也采用NodeJs集成了极光推送API的脚本插件。',
        tags: ['Java', 'Html5', 'CSS3', 'JavaScript', 'Jquery', 'MUI', 'NodeJS', 'Bootstrap', 'Vue', 'Mysql']
      }]
    }
  },
  mounted() {
    window.scrollTo(0, 0)
  },
  methods: {
    showCompany: function() {
      this.showCompanyFlag = !this.showCompanyFlag
      this.clearCount()
    },
    flagAnimationDelay: function() {
      const time = flagItems * 0.4 + 's'
      flagItems++

      return {
        'animation-delay': time
      }
    },
    clearCount: function() {
      flagItems = 0
    }
  },
  beforeDestroy() {
    this.clearCount()
  }
}
</script>

<style lang="less">
    @flagWidth: 100px;
    @iconWidth: 24px;

    .animation-delay(@n, @i: 1) when (@i =< @n) {
        .column-@{i} {
            width: (@i * 100% / @n);
        }
        .generate-columns(@n, (@i + 1));
    }

    @keyframes zoomIn {
        0%{
            opacity: 0;
            transform: scale3d(.3, .3, .3);
        } 
        50%{
            opacity: 1;   
        }
    }

    @keyframes scaleRight {
        0%{
            opacity: 0;
            transform: scaleX(0);
        }
        30%{
            opacity: 1;
        }
        60%{
            transform: scaleX(1.1);
        }
        90%{
            transform: scaleX(0.98);
        }
        100%{
            transform: scaleX(1);
        }
    }
    
    .experience{
        text-align: left;
        font-size: 1rem;

        
        
        .change-flag{
            text-align: right;
            overflow: hidden;
            
            svg{
                transition: all 0.8s;
            }

            span{
                display: inline-block;
                transition: all 0.8s;
                transform: translateX(60px);

                &:hover{
                    cursor: pointer;
                    transform: translateX(0px);

                    svg{
                        transform: rotateZ(90deg);
                    }
                }
            }

        }

        .time-graph{
            background-color: #e8b118;
            padding: 10px 0;
            box-shadow: 0px -2px 10px #fec528;
            margin-top: 10px;

            ul{
                padding: 0;
                margin: 0;
            }

            > ul {
                position: relative;
                padding: 10px 30px;
                color: #fff;
                
                &::after{
                    @width: 4px;
                    content: '';
                    position: absolute;
                    top: 0;
                    left: @flagWidth + @width + 1px;
                    width: @width;
                    height: 100%;
                    background-color: rgba(248, 6, 100, 0.9);
                    z-index: 2;
                }
            }

            li {
                list-style: none;
                min-height: 40px;
                font-size: 0;
                display: flex;
                align-items: center;

            }

            .flag, .describe{
                font-size: 1rem;
            }

            .flag{
                width: @flagWidth;

                text-align: right;
                letter-spacing: 0.1rem;
                padding-right: 10px;
                box-sizing: border-box;
                position: relative;
                background-color: #e8b118;
                z-index: 9;

                transform-origin: 0 100%;
                animation: zoomIn .6s ease both;

                .icon{
                    color: #fff;
                    font-weight: 600;
                }

                .icon-year{
                    font-size: 1.65rem; 
                }

                .icon-month{
                    font-size: 1.25rem; 
                    padding-right: 0.2rem;
                    vertical-align: middle;
                }
            }

            .describe{
                @padding: 10px;
                position: relative;
                width: calc(100% - @flagWidth);
                background-color: #ed9235;
                color: #fff;
                padding: @padding;
                border-radius: 4px;
                margin: 10px 0;
                box-sizing: border-box;
                box-shadow: 3px 3px 6px #ce6e0d;
                z-index: 10;

                transform-origin: 0 50%;
                animation: scaleRight .6s ease both;

                &::after{
                    @border-width: 10px;
                    @height: (sqrt(pow(@border-width, 2)+pow(@border-width, 2)));

                    content: '';
                    position: absolute;
                    border-left: @border-width solid #ed9235;
                    top: 50%;
                    left: -@padding+1px;
                    border-top: @border-width solid transparent;
                    transform: rotateZ(45deg) translateY(-@height/2);
                    z-index: 10;
                }
            }
        }

        .company{

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

            .company-content{
                margin: 10px 0px 20px 20px;

                .job-title{
                    display: flex;
                    align-items: center;
                    margin: 0.5rem 0;
                    color: #40484f;

                    h2{
                        flex: 1;
                        margin: 0;
                        font-size: 1.15rem;
                    }

                    div{
                        flex: 1;
                        text-align: right;
                    }
                }

                .responsibility{
                    line-height: 1.5rem;
                    font-size: 1.15rem;
                    letter-spacing: 0.5px;
                }
            }   
        }
    }

    @media screen and (max-width: 768px) {
        .time-graph-margin{
            margin: -1rem -1.5rem;
        }
        .experience{

            .change-flag{

                span{
                    transform: translateX(0px);

                    &:hover{
                        cursor: pointer;
                        transform: translateX(0px);

                        svg{
                            transform: rotateZ(90deg);
                        }
                    }
                }
                svg{
                    transform: rotateZ(90deg);
                }
            }

            .time-graph{
                > ul {
                    @paddingWidth: 30px;
                    
                    padding-left: 0;
                    
                    &::after{
                        @width: 4px;
                        left: @flagWidth + @width + 1px - @paddingWidth;
                    }
                }
            }
        }
    }
</style>
