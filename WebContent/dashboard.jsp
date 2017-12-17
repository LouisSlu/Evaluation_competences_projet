<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dashboard</title>
<script src="js/echarts.js"></script>
<style>
	.pie{
		width: 300px;
		height:300px;
		float:left;
	}
</style>
</head>
<body>
	<div class="pies">
	<div id="pie1" class="pie"></div>
	<div id="pie2" class="pie"></div>
	<div id="pie3" class="pie"></div>
	<div id="pie4" class="pie"></div>
	<div id="pie5" class="pie"></div>
	<div id="pie6" class="pie"></div>
	<div id="pie7" class="pie"></div>
	<div id="pie8" class="pie"></div>
	<script type="text/javascript">
		var pies=new Array("Electronique", "Informatique", "Télécom", "Traitement du signal", "Communication",
			"Travail en équipe", "Conduite du projet", "Professionelle responsable");
        var myChart1 = echarts.init(document.getElementById('pie1'));
        var myChart2 = echarts.init(document.getElementById('pie2'));
        var myChart3 = echarts.init(document.getElementById('pie3'));
        var myChart4 = echarts.init(document.getElementById('pie4'));
        var myChart5 = echarts.init(document.getElementById('pie5'));
        var myChart6 = echarts.init(document.getElementById('pie6'));
        var myChart7 = echarts.init(document.getElementById('pie7'));
        var myChart8 = echarts.init(document.getElementById('pie8'));
        var i;
        
        var option = {
        		title : {
        	        text: 'Electronique',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Electronique',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        
        myChart1.setOption(option);
        option = {
        		title : {
        	        text: 'Informatique',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Informatique',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        myChart2.setOption(option);
        option = {
        		title : {
        	        text: 'Télécom',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Télécom',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        myChart3.setOption(option);
        option = {
        		title : {
        	        text: 'Traitement du signal',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Traitement du signal',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        myChart4.setOption(option);
        option = {
        		title : {
        	        text: 'Communication',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Communication',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        myChart5.setOption(option);
        option = {
        		title : {
        	        text: 'Travail en équipe',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Travail en équipe',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        myChart6.setOption(option);
        option = {
        		title : {
        	        text: 'Conduite du projet',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Conduite du projet',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        myChart7.setOption(option);
        option = {
        		title : {
        	        text: 'Professionelle responsable',
        	        x:'center'
        	    },
        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },
        	    series : [
        	        {
        	            name: 'Professionelle responsable',
        	            type: 'pie',
        	            radius : '55%',
        	            center: ['50%', '60%'],
        	            data:[
        	                {value:335, name:'Au-delà'},
        	                {value:310, name:'Attendu'},
        	                {value:234, name:'Loin'},
        	                {value:135, name:'Proche'},],
        	            itemStyle: {
        	                emphasis: {
        	                    shadowBlur: 10,
        	                    shadowOffsetX: 0,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            }
        	        }]
        };
        myChart8.setOption(option);
    </script>
    </div>
</body>
</html>