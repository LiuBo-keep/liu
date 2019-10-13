var cans = document.querySelector(".can");
var ctx = cans.getContext("2d");

//坐标轴距离画布上右下左的边距
var padding = {
	top: 15,
	right: 15,
	bottom: 15,
	left: 15
}

//坐标轴中箭头的宽高
var arrow = {
	width: 16,
	height: 20
}

//求坐标轴上的顶点的坐标
var headTop = {
	x: padding.left,
	y: padding.top
}
//求坐标轴原点的坐标
var origin = {
	x: padding.left,
	y: cans.height - padding.bottom
}
//求坐标轴上的右顶点的坐标
var rightBottom = {
	x: cans.width - padding.right,
	y: cans.height - padding.bottom
}
//绘制坐标轴
ctx.strokeStyle = "red";
ctx.moveTo(headTop.x, headTop.y);
ctx.lineTo(origin.x, origin.y);
ctx.lineTo(rightBottom.x, rightBottom.y);
ctx.stroke();

//画顶点箭头
ctx.beginPath();
ctx.strokeStyle = "green";
ctx.moveTo(headTop.x, headTop.y);
ctx.lineTo(headTop.x - arrow.width / 2, headTop.y + arrow.height);
ctx.lineTo(headTop.x, headTop.y + arrow.height / 2);
ctx.lineTo(headTop.x + arrow.width / 2, headTop.y + arrow.height);
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();

//画右定点箭头
ctx.beginPath();
ctx.strokeStyle = "green";
ctx.moveTo(rightBottom.x, rightBottom.y);
ctx.lineTo(rightBottom.x - arrow.height, rightBottom.y - arrow.width / 2);
ctx.lineTo(rightBottom.x - arrow.height / 2, rightBottom.y);
ctx.lineTo(rightBottom.x - arrow.height, rightBottom.y + arrow.width / 2);
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();

ctx.beginPath();
ctx.moveTo(origin.x + 30, origin.y);
ctx.lineTo(origin.x + 30, origin.y - 100);
ctx.lineTo(origin.x + 80, origin.y - 100);
ctx.lineTo(origin.x + 80, origin.y)
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();

ctx.beginPath();
ctx.moveTo(origin.x + 110, origin.y);
ctx.lineTo(origin.x + 110, origin.y - 200);
ctx.lineTo(origin.x + 160, origin.y - 200);
ctx.lineTo(origin.x + 160, origin.y);
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();

ctx.beginPath();
ctx.moveTo(origin.x + 190, origin.y);
ctx.lineTo(origin.x + 190, origin.y - 280);
ctx.lineTo(origin.x + 240, origin.y - 280);
ctx.lineTo(origin.x + 240, origin.y);
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();

ctx.beginPath();
ctx.moveTo(origin.x + 270, origin.y);
ctx.lineTo(origin.x + 270, origin.y - 330);
ctx.lineTo(origin.x + 320, origin.y - 330);
ctx.lineTo(origin.x + 320, origin.y);
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();

ctx.beginPath();
ctx.moveTo(origin.x + 350, origin.y);
ctx.lineTo(origin.x + 350, origin.y - 300);
ctx.lineTo(origin.x + 400, origin.y - 300);
ctx.lineTo(origin.x + 400, origin.y);
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();

ctx.beginPath();
ctx.moveTo(origin.x + 430, origin.y);
ctx.lineTo(origin.x + 430, origin.y - 150);
ctx.lineTo(origin.x + 480, origin.y - 150);
ctx.lineTo(origin.x + 480, origin.y);
ctx.closePath();
ctx.fillStyle = "green";
ctx.fill();
ctx.stroke();