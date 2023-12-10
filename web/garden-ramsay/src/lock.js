
function ComboLock() {
	this.mouseDownY = null;
	this.mouseDownItem = null;
};

ComboLock.prototype.init = function () {
	var self = this;

	$(".lockDigitContainer").mousedown(function (evt) {
		self.mouseDownItem = $(this);
		self.mouseDownItem.addClass('depressed');
		self.mouseDownY = evt.clientY;
	});

	$(document).mouseup(function (evt) {
		if (self.mouseDownY) {
			var dir = 'down'
			if (self.mouseDownY > evt.clientY)
				var dir = 'up';

			self.rotateDirection(dir, self.mouseDownItem);
			self.mouseDownItem.removeClass('depressed');

			self.mouseDownY = null;
			self.mouseDownItem = null;
		}
	});
};

/**
 * direction: up | down
 * item: jquery object
 */
ComboLock.prototype.rotateDirection = function (direction, item) {
	//console.log('rotate: ', direction, item);

	var checkdigit = 0;
	var newdigit = 9;
	var additiondigit = -1;
	if ('up' == direction) {
		checkdigit = 9;
		newdigit = 0;
		additiondigit = 1;
	}

	var p = parseInt(item.find('.lockDigitPrev').html());
	var c = parseInt(item.find('.lockDigitCur').html());
	var n = parseInt(item.find('.lockDigitNext').html());

	p = (p == checkdigit) ? newdigit : p + additiondigit;
	c = (c == checkdigit) ? newdigit : c + additiondigit;
	n = (n == checkdigit) ? newdigit : n + additiondigit;

	item.find('.lockDigitPrev').html(p);
	item.find('.lockDigitCur').html(c);
	item.find('.lockDigitNext').html(n);
};

ComboLock.prototype.getCombination = function () {
	var res = [];
	for (var i = 0; i < 6; i++)
		res.push(parseInt($(".digit" + i + " .lockDigitCur").html()));
	return res.join("");
};

var combo = new ComboLock();
combo.init();
