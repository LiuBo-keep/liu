window.onload = function() {
			//获取信息源
			var bodyLeft = document.getElementById("bodyLeft");
			var ulArr = bodyLeft.children[0];
			var spanArr = bodyLeft.children[1].children;
			var imgWight = bodyLeft.offsetWidth;

			//循环遍历
			for(var i = 0; i < spanArr.length; i++) {
				//属性绑定(自定义属性参数盒子的索引值)
				//用span的innerHTML属性也可以，但是为了代码的健壮性，我们选择自己的属性
				spanArr[i].index = i; //绑定的是索引值，所以移动盒子的时候不用-1
				spanArr[i].onmouseover = function() {
					//排他思想
					for(var j = 0; j < spanArr.length; j++) {
						spanArr[j].className = "";
					}
					this.className = "current";
					animate(ulArr, -this.index * imgWight);
				}

			}
			//移动盒子
			function animate(ele, target) {
				clearInterval(ele.time);
				var speed = target > ele.offsetLeft ? 10 : -10;
				//绑定时间
				ele.time = setInterval(function() {
					//当前值
					var val = target - ele.offsetLeft;
					ele.style.left = ele.offsetLeft + speed + "px";

					if(Math.abs(val) < Math.abs(speed)) {
						ele.style.left = target + "px";
						clearInterval(ele.time);
					}
				}, 10);
			}

			//返回顶部小火箭
			var toTop = document.querySelector(".toTop");
			//浏览器滚动
			window.onscroll = function() {
				if(scroll().top > 200) {
					toTop.style.display = "block";
				} else {
					toTop.style.display = "none";
				}
				leader = scroll().top;
			}

			var time = null;
			var target = 0; //目标位置
			var leader = 0; //显示区域自身的位置
			toTop.onclick = function() {
				//要用定时器，先清除定时器
				clearInterval(time);
				time = setInterval(function() {
					//技术点：window。scrollTo(x,y);
					//获取步长
					var step = (target - leader) / 10;
					//二次处理步长
					step = step > 0 ? Math.ceil(step) : Math.floor(step);
					//实际位置+步长
					leader = leader + step;
					//技术点：window。scrollTo(x,y);
					//显示区域移动
					window.scrollTo(0, leader);
					if(leader === 0) {

						clearInterval(time);
					}
				}, 55);
			}

			function scroll() {
				if(window.pageYOffset !== undefined) {
					return {
						"top": window.pageYOffset,
						"left": window.pageXOffset
					}
				} else if(document.compatMode == "CSS1Compat") {
					return {
						"top": document.documentElement.scrollTop,
						"left": document.documentElement.scrollLeft
					}
				} else {
					return {
						"top": document.body.scrollTop,
						"left": document.body.scrollLeft
					}
				}
			}

			//文字颜色的变化
			var newCententTop = document.querySelector("#newTop1");
			var span = newCententTop.children[0];
			var p = newCententTop.children[1];
			var a = p.children[0];
			newCententTop.onmouseover = function() {
				over();
			}
			newCententTop.onmouseout = function() {
				out();
			}

			function over() {
				span.style.color = "white";
				p.style.color = "white";
				a.style.color = "white";
			}

			function out() {
				span.style.color = "";
				p.style.color = "";
				a.style.color = "";
			}
		}