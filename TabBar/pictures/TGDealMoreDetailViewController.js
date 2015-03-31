(function () {

	var imgs = document.getElementsByTagName('img');
	for (var i = 0; i != imgs.length; ++i) {
		var img = imgs[i];
		img.style.width = (document.body.offsetWidth - img.offsetLeft * 2) + 'px';
	
		img.addEventListener('click', function (evt) {
			window.open('dianping://dealmorebigimage?img=' + encodeURIComponent(event.target.src));
		}, false);
	}
})();