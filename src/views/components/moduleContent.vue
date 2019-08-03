<template>
	<div class="module">
		<div class="module-header">
			<h2>{{title}}<a href="javaScript:void(0);" @click="toDetial"><span v-if="!!link">more</span></a></h2>
		</div>
		<slot>
			<div class="module-content" v-html="content"></div>
		</slot>
	</div>
</template>

<script>
	export default{
	  props: {
	    title: {
	      type: String,
	      required: true
	    },
	    link: {
	      type: String,
	      required: true
	    },
	    content: {
	      type: String,
	      required: false
	    }
	  },
	  data() {
	    return {

	    }
	  },
	  methods: {
	    toDetial: function() {
	      // this.$router.push({path: `/${this.link}`, query: {title: this.title}});
	      this.$router.push({ name: 'detailPage', params: { page: this.link, title: this.title }})
	      sessionStorage.setItem('title', this.title)
	    }
	  }
	}
</script>

<style lang="less" scoped>
	.module{
		padding-bottom: 1rem;

		.module-header{
			margin-bottom: 1rem;

			h2{
				margin-bottom: 1rem;
				border-bottom: 1px solid #ddd;
				padding-bottom: .75em;
				font-size: 1.25rem;
				text-align: left;
				font-weight: 400;
			}

			a{
				float: right;
				text-decoration: none;
				text-align: right;
				font-size: 1rem;
				color: #45b29a;
				padding-bottom: .2rem;
	    		border-bottom: 1px solid #45b29a;
			}
		}

		.module-content{
			overflow: hidden;
			text-align: left;
			margin: .5rem 0;
			font-size: 1.15rem;
			line-height: 2.5rem;
		}
	}
	
</style>
