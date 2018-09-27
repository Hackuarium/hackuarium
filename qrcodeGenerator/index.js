var QRCode = require('qrcode-svg');

var qrcode = new QRCode({
  content: 'mailto:laser@molmall.net',
  padding: 4,
  width: 256,
  height: 256,
  color: '#000000',
  background: '#ffffff',
  ecl: 'M'
});
qrcode.save('mailto-laser-molmall.svg', function(error) {
  if (error) throw error;
  console.log('Done!');
});
