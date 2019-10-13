var cans = document.querySelector(".cans");
var ctx = cans.getContext("2d");

//坐标轴距离画布上右下左的边距
var padding = {
	top: 20,
	right: 20,
	bottom: 20,
	left: 20
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
ctx.beginPath();
ctx.strokeStyle = "black";
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


var points = [
	[30, 60],
	[100, 260],
	[200, 110],
	[300, 240],
	[400, 160],
	[500, 260]
];
//在坐标轴中指定的位置画点
points.forEach(function(arr) {
	ctx.fillRect(origin.x + arr[0] - 2, origin.y - arr[1] - 2, 4, 4);
});

//在坐标轴中根据点的坐标画折线
ctx.beginPath();
points.forEach(function(arr) {
	ctx.lineTo(origin.x + arr[0], origin.y - arr[1]);
});
ctx.stroke();

//虚线
var xuXian = [
	[30, 260],
	[100, 110],
	[200, 220],
	[300, 140],
	[400, 190],
	[500, 60]
];
//在坐标轴中指定的位置画点
xuXian.forEach(function(arr) {
	ctx.fillRect(origin.x + arr[0] - 2, origin.y - arr[1] - 2, 4, 4);
});
//在坐标轴中根据点的坐标画折线
ctx.beginPath();
xuXian.forEach(function(arr) {
	ctx.setLineDash([5, 5]);
	ctx.lineDashOffset = 5;
	ctx.strokeStyle = "#FF0000";
	ctx.lineTo(origin.x + arr[0], origin.y - arr[1]);
});
ctx.stroke();