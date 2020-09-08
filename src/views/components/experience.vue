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
                        <li v-for="_incident in item.incident" :key="item.year + _incident.time">
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
        year: '2017年',
        incident: [
          {
            time: '3月',
            describe: '完成毕业设计，采用Hybrid方式开发一款离线音乐播放器App，基于原生的文件读取并解析音频meta信息，界面采用webview形式展示'
          }, {
            time: '5月',
            describe: '参加蓝桥杯国赛，可能是练习还是不够，仅仅获得了三等奖'
          }, {
            time: '6月',
            describe: '入职深圳昂纳科技有限公司技术部综合组，主要是做公司OA流程业务'
          }, {
            time: '10月',
            describe: '年底公司各部门需要各种报表数据查看做明年预算，然后加班加点完成报表系统并集成到OA系统'
          }
        ]
      }, {
        year: '2018年',
        incident: [
          {
            time: '6月',
            describe: '加入华风海洋大家庭，并参与康源医疗管理系统主要是ElementUI做基础UI组件'
          }, {
            time: '8月',
            describe: '康源医疗管理系统上线并交付用户，紧接着被安排到重构公司一款自主产品<海岛团建游>的后台管理系统；管理系统是基于Ext框架开发，然后觉得采用vue进行重构（此处小声逼逼，之前的代码真是杂乱无章，怪不得要重构）'
          }, {
            time: '9月',
            describe: '海约后台管理系统重构至中期，因为项目需要临时被分配至渔港项目组，进行洪湾渔港交易平台的PC端开发'
          }, {
            time: '11月',
            describe: '洪湾渔港交易平台一期定版，紧接着需要开发基于微信工作平台的H5端'
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
            describe: '结束了华风大家庭的学习生活之旅，虽然疲惫但很充实'
          }, {
            time: '10月',
            describe: '偶然机会加入了省广集团大数据部门，主要负责基础建设工作（公司的sass平台维护与迭代'
          }, {
            time: '11月',
            describe: '集团广告合作方屈臣氏做广告线下转线上战略调整，需要给他们开发定制化的广告投放平台并以集团的营销Sass平台作为数据分析基础'
          }, {
            time: '12月',
            describe: '商品广告位、package资源的复杂关系导致购物车、订单面临巨大挑战，努力克服中····'
          }
        ]
      }, {
        year: '2020年',
        incident: [
          {
            time: '1月',
            describe: '屈臣氏Media Platform 1.0平台上线成功。紧接着放假了(疫情来了···'
          },
          {
            time: '2月',
            describe: '疫情躲在家里面····并远程完成了Media Platform1.1迭代。主要是KOL监测、小程序报表监测等监测报表的功能'
          }, {
            time: '3月',
            describe: '疫情风声变小，开始上班。进行屈臣氏1.2版本迭代，并被安排做H5落地页项目'
          }, {
            time: '4月',
            describe: '屈臣氏迭代1.3版本，集团和红旗合作为红旗H9新车做广告投放，需要一款推广运营平台(实际上也是线下转线上模式调整。'
          }, {
            time: '6月',
            describe: '红旗空间1.0开发接近尾声，屈臣氏2.0开始启动。基础项目架构组件库维护工作交到我这里，简称基建~'
          }, {
            time: '7月',
            describe: '红旗空间1.0交付，并开始进行功能优化与迭代，屈臣氏2.0开发持续进行中··'
          }, {
            time: '8月',
            describe: '集团架构与部门大调整。业务方向变化。。'
          }, {
            time: '9月',
            describe: '找工作中·····'
          }
        ]
      }],
      compnayList: [{
        name: '广东省广告集团股份有限公司',
        job: '前端工程师',
        startTime: '2019.10',
        endTime: '2020.09',
        responsibility: '负责公司红旗空间小程序/红旗运营平台、屈臣氏MediaPlatform、广告全营销Sass系统、H5落地页、 基础项目平台建设与维护',
        tags: ['Html5', 'CSS3', 'JavaScript', 'Vue全家桶', 'NodeJS', 'SCSS', 'Webpack', 'gulp', '小程序', 'ElementUI']
      }, {
        name: '广东华风海洋信息系统服务有限公司',
        job: '前端工程师',
        startTime: '2018.06',
        endTime: '2019.09',
        responsibility: '负责公司洪湾渔港B2B交易平台的PC端，H5端项目前端部分基本架构与技术方案拟定，订单中心、商品发布等模块开发;自主产品海岛团建小程序开发与维护;期间也参与开发与设计公司内部项目通用组件库',
        tags: ['Html5', 'CSS3', 'JavaScript', 'Vue全家桶', 'NodeJS', 'SCSS', 'Webpack', '小程序', 'ElementUI', 'VantUI', 'MintUI']
      }, {
        name: '昂纳信息技术(深圳)有限公司',
        job: '前端工程师',
        startTime: '2017.07',
        endTime: '2018.02',
        responsibility: '负责公司OA系统的二次开发与维护，对原系统Java底层功能的优化和改进，并采用VueJS等前端技术独立开发了一套可配置的模板报表系统与OA系统对接集成，主要涉及项目前端开发。工作之余学习了相关Web前端的各种新兴技术Webpack、Canvas等',
        tags: ['Java', 'Html5', 'CSS3', 'JavaScript', 'Jquery', 'NodeJS', 'Vue', 'Webpack', 'Less', 'Sqlserver', 'ElementUI']
      }, {
        name: '广西深睿科技有限公司',
        job: '前端工程师',
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
