import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Ăn sáng',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Nhanh & Dễ',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Khai vị',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Món chính',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Món chay',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Salad',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Pasta - Spaghetti',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Gà',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Snack',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Lẩu',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Cơm Chiên Tôm Cay',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://image.cooky.vn/recipe/g3/28248/s640/recipe-cover-r28248.jpg',
    duration: 20,
    ingredients: [
      '400 Gr Cơm',
      '200 Gr Tôm tươi',
      '30 ml nước tương',
      '40 Gr đường trắng',
      '30 Gr tương cà',
      '30 Gr tương ớt',
      '50 Gr tương ớt Hàn Quốc',
      '5 Gr ớt bột',
      '5 Gr Tỏi',
      '2 muỗng canh dầu ăn',
      '20 Gr Hành tây',
      '10 Gr Tỏi',
      '10 Gr Ớt',
      '50 Gr Kim chi cải thảo',
      '20 Gr Hành lá',
      '2 Quả trứng gà',
    ],
    steps: [
      'Nấu nước sốt cay gồm 30ml nước tương, 50ml nước lọc, 40gr đường, 30gr tương cà, 30gr tương ớt, 50gr tương ớt Hàn Quốc, 5gr ớt bột Hàn Quốc, 5gr tỏi băm vào rồi khuấy đều cho sốt hoà quyện.',
      'Tiếp theo cho 200gr tôm đã bóc vỏ vào chảo, trở đều cho tôm thấm sốt. Rim thêm 5 phút cho tôm chín thì tắt bếp.',
      'Trên một chiếc chảo khác cho vào 2 muỗng canh dầu ăn, làm nóng dầu rồi cho 20gr hành tây cắt hạt lựu, 10gr tỏi thái lát, 10gr ớt đỏ cắt nhỏ vào phi cho dậy mùi. Khi hành tây chuyển trong bạn cho 400gr cơm nguội, 50gr kim chi cắt nhỏ và 20gr hành lá vào chảo. Rang đều cơm và các nguyên liệu trong chảo cho nóng lên và tơi ra.',
      'Khi cơm đã tơi đều chúng ta dồn cơm về chính giữa, chừa một khoảng trống bên ngoài chảo. Đánh tan đều 2 quả trứng gà, đổ vào khoảng trống đã chừa xung quanh cơm. Gắp tôm đã rim lên trên cơm và thưởng thức thôi.',
      'Vậy là chỉ với vài bước đơn giản là bạn đã có được một món cơm chiên lạ miệng và cực kì hấp dẫn rồi.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Pate Gan Gà Béo',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://image.cooky.vn/recipe/g4/33921/s640/cooky-recipe-cover-r33921.jpg',
    duration: 10,
    ingredients: [
      '300 Gr Gan gà',
      '130 ml Sữa tươi không đường',
      '25 Gr Bơ',
      '4 Củ hành tím',
      '3 Củ tỏi',
      '1 Muỗng cà phê muối',
      '1.5 Muỗng cà phê hạt tiêu',
      '1/2 Muỗng cà phê Xạ hương'
    ],
    steps: [
      'Gan gà rửa sạch, cố gắng bỏ phần mỡ dính xung quanh rồi thái miếng nhỏ. Đổ sữa tươi ngập gan rồi ngâm khoảng 10-15 phút. Hành tím và tỏi bóc vỏ, băm nhỏ.',
      'Đun nóng cho tan chảy bơ, cho hành tím và tỏi băm vào xào thơm. Cho gan và tiêu hạt vào (nếu dùng tiêu xay thì chỉ cần cho 1/3 vào lúc này cho thơm), đảo đều tay để gan chín. Lần lượt cho muối, xạ hương đảo đều tiếp. Trước khi tắt bếp rồi bắc qua 1 bên thì rắc tiêu xay vào, đảo đều rồi để khoảng 10 phút cho nguội bớt.',
      'Cho vừa đủ phần gan vừa xào vào và máy xau thực phẩm, ấn nút và xay tới độ nhuyễn mình muốn.',
      'Đổ hỗn hợp gan xay vào hộp rồi bỏ vào ngăn mát tủ lạnh khoảng 3-4 tiếng. Nếu làm pate gan vào buổi tối thì sáng hôm sau ngủ dậy là có thể phết ăn cùng bánh mì được rồi.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Mì Quảng Tôm Thịt Trứng',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
    'https://image.cooky.vn/recipe/g5/49623/s640/cooky-recipe-637017185802026840.JPG',
    duration: 45,
    ingredients: [
      '1 Con gà',
      '60 Gr Gia vị',
      '300 Gr Tôm chay',
      '100 Gr Đậu phộng rang',
      '2 Cái bánh đa',
      '1 Muỗng canh nước mắm',
      '2 Muỗng canh hạt nêm',
      '1/2 Muỗng cà phê bột ngọt',
      '1/3 Muỗng cà phê bột nghệ'
    ],
    steps: [
      'Làm sạch gà, chặt miếng vừa ăn, ướp gà với 1/2 muỗng canh củ hành tỏi băm nhỏ, vài lát nghệ tươi, 1 muỗng canh hạt nêm, 1 muỗng canh nước mắm, 1/2 muỗng cà phê bột ngọt. Rửa sạch tôm ướp với ít củ hành tỏi băm nhỏ, 1/2 muỗng canh hạt nêm, ít bột ngọt. Ướp thịt gà và tôm khoảng 20"',
      'Rửa sạch tất cả rau với nước muối pha loãng để ráo nước. Luộc chín trứng cút lột vỏ',
      'Cho ít dầu vào nồi phi thơm ít củ hành tỏi băm nhỏ, xào tôm chín cho ra tô để qua một bên.',
      'Dùng lại nồi phi thơm thêm ít củ hành tỏi băm nhỏ để xào thịt gà,nêm thêm 1 muỗng cà phê màu đều và 1/3 muỗng cà phê bột nghệ vào. Thịt gà săn, cho nước vào sâm sấp mặt thịt. Tuỳ theo độ dai của thịt gà, có thể cho trứng cút vào luôn (để trứng cút thấm nước dùng mới ngon). Nước dùng sôi vài lượt,gà vừa đủ độ mềm, cho tôm vào. Nêm nếm lại vừa khẩu vị',
      'Nấu nước trụng sơ mì quảng cho ra tô, để tôm thịt trứng lên trên và chan nước dùng vào sâm sấp mặt bánh, thêm hành lá, đậu phộng rang. Ăn kèm với rau, bánh đa nè. Ngon hơn nếu ai ăn được ớt xiêm xanh,cay...thơm ngất ngây luôn...Xin mời '
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Mì Udon Thịt Heo Hầm & Trứng Ngâm',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://image.cooky.vn/recipe/g6/51639/s640/cooky-recipe-637130490017405350.jpg',
    duration: 60,
    ingredients: [
      '15 Cái trứng gà',
      '150 ml xì dầu',
      '500 ml Nước dùng',
      '100 ml Rượu Mirin',
      '100 ml Rượu Sake',
      '1 Muỗng canh đường',
      '1 Miếng gừng',
      '1/2 Củ hành tây',
      '1 Kg Thịt ba chỉ',
      '1 Củ cà rốt',
      '5 Tép tỏi'
    ],
    steps: [
      'Cách làm trứng ngâm:1/ Đổ nước vào nồi, nấu sôi sau đó cho 1 chút giấm và muối (cho giấm và muối để lỡ trứng có nứt thì lòng trắng vẫn nguyên vẹn) vào nước luộc rồi nhẹ nhàng thả trứng vào nồi luộc trong khoảng 5 - 5.30 phút (mẹo, khi luộc được 2p, vớt từng trứng lên dùng muỗng gõ nhẹ vào đầu to của quả trứng cho hơi rạn vỏ rồi thả nhẹ vào luộc tiếp, bảo đảm khi bóc vỏ, 10 quả đẹp đủ 10)2/ Trứng luộc xong ngay lập tức ngâm vào nước đá để hạ nhiệt để không làm trứng tiếp tục chín. Sau khi trứng nguội thì lấy ra bóc. Chú ý bóc nhẹ và cẩn thận vì trứng lòng đào rất mềm và dễ vỡ.3/ Cho tất cả nguyên liệu ngâm trứng vào nồi đun sôi để nguội. Lọc lấy nước ngâm trứng vào thố.4/ Cho trứng vào hộp hỗn hợp nước ngâm cùng hành lá, mè rang và ớt. Để trứng qua đêm là ngon nhất hoặc sau 2h là đã có thể dùng được. Bảo quản trứng trong ngăn mát tủ lạnh được 7 ngày và nhớ là trứng luôn ngập nước ngâm.',
      'Cách làm nước dùng mì:1/ Rửa sơ Konbu, sau đó cho Konbu vào nồi cùng 3.5L nước lọc. Đun sôi và hạ nhỏ lửa đun Konbu 15 phút, tiếp đến cho cá cơm khô hoặc cá bào vào nấu thêm 20 phút nữa để lấy chất ngọt từ cá và tảo bẹ. Lọc lấy nước dùng qua rây.2/ Đun sôi lại nước dùng vừa lọc, nêm vào Mirin, Hon dashi và muối. Tắt lửa. Ta đã có nước dùng mì, đừng lo nước dùng nhạt vị, vì sau đó chúng ta sẽ chan thêm nước hầm thịt vào tô mì thành phẩm.',
      'Cách hầm thịt :1/ Thịt heo rửa sạch, cuộn tròn thịt, lấy dây cột chặt.2/ Hành boa rô cắt khúc ngắn, tỏi, gừng cắt lát mỏng, cà rốt cắt khối to, hành tây cắt múi cau to3/ Cho vào nồi: nước dùng + Ryorishu + Mirin + nước tương + đường + cà rốt + hành tây + boa rô + tỏi + gừng nấu sôi tắt lửa . Ta có hỗn hợp nước hầm.4/ Bắt chảo dầu chiên vàng 2 mặt tảng thịt ( cuộn thịt)5/ Cho thịt đã chiên vào nồi nước kho chuẩn bị sẵn, khi hỗn hợp nước kho sôi bùng thì bớt lửa nhỏ, hầm riu riu đến khi thịt mềm, thỉnh thoảng trở đều cuộn thịt (lưu ý nước hầm cạn thì phải châm thêm cho ngập thịt). Nếu bạn hầm bằng nồi áp suất thì 3 lửa là thịt mềm ngon thấm vị, hoàn tất.',
      'Thưởng thức : Đun sôi nước cho mì Udon hoặc mì Ramen vào chần sơ, chủ yếu cho mì rời ra vì mì tươi đã chín sẵn rồi. Cho mì vào tô, xếp thịt và cắt đôi trứng bằng chỉ hoặc để nguyên trứng, chan 1/3 nước hầm thịt và 2/3 nước dùng vào, rắc hành lá cắt nhỏ thêm ít bột ớt 7 vị. Thưởng thức nóng !!👉 Thịt heo hầm kiểu này nếu nhiều thì cất tủ mát, cắt lát thịt heo hầm cho ra dĩa ăn với cơm trắng như món mặn kèm dưa leo, cà chua hoặc cuốn rau sống rất ngon'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
      'c5',
      'c10',
    ],
    title: 'Salad Trái Cây Trộn Chua Ngọt',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      '50 ml Nước cốt cam',
      '20 ml Nước cốt canh',
      '1 Muỗng cà phê Đường nâu',
      '5 Gr Vỏ cam',
      '5 Gr Vỏ chanh',
      '1 Muỗng cà phê Vani',
      '1/2 Trái thơm',
      '5 trái Dâu tây',
      '2 trái Kiwi',
      '1 trái Chuối',
      '2 trái Cam',
      '100 Gr Nho'
    ],
    steps: [
      'Đầu tiên, cho 50ml nước cốt cam, 20ml nước cốt chanh, 1 muỗng cà phê đường nâu, 5gr vỏ chanh, 5gr vỏ cam, 1 muỗng cà phê vani vào nồi, bắc lên bếp, khuấy đều khoảng 1 phút.',
      'Thơm, dâu tây, kiwi rửa sạch, cắt hạt lựu.',
      'Chuối bóc vỏ, cắt khoanh tròn khoảng 1cm. Cam bóc vỏ, tách lấy múi còn nho rửa sạch, để nguyên trái.',
      'Cho tất cả trái cây ra tô, rưới đều hỗn hợp nước cốt cam vào, trộn đều. Trang trí thêm lá bạc hà nếu thích và thưởng thức ngay nhé!'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Trà Vải Tươi',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://image.cooky.vn/recipe/g3/24673/s640/recipe-cover-r24673.jpg',
    duration: 240,
    ingredients: [
      '200 Gr Vải',
      '1 Gói Trà túi lọc',
      '2 Muỗng canh Đường trắng',
      '150 ml Nước',
      '5 Gr Lá bạc hà'
    ],
    steps: [
      'Vải bóc vỏ, bỏ hạt. Cho ½ chỗ vải trên vào máy xay sinh tố xay nhuyễn, lọc bỏ bã, giữ lại phần nước cốt.',
      'Cho khoảng 2 muỗng canh đường vào nồi cùng 30ml nước khuấy đều cho đường tan hết. Nhúng 1 gói trà vào 150ml nước nóng.',
      'Đổ siro đường vào cốc, tiếp theo đổ nước cốt vải vào. Thêm 2-3 lá bạc hà vào cốc, đổ đá gần đầy miệng cốc. Cắt một lát cam để vào miệng thành cốc để trang trí, cho quả vải đã bỏ hạt còn lại vào đầy cốc.',
      'Cuối cùng, bạn đổ trà từ từ vào cốc là xong. Cách làm trà vải là thức uống thơm mát mà ai cũng ưa thích mỗi khi hè về. Thay vì pha trà vải theo cách thông thường, bạn hãy thử pha trà vải theo cách này nhé! Chắc chắn bạn sẽ cực kì hài lòng với ly trà vải vừa đẹp mắt lại vừa thơm ngon đấy!',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Bánh Xèo Nam Bộ',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://image.cooky.vn/recipe/g2/19814/s640/cooky-recipe-636294064109344237.JPG',
    duration: 20,
    ingredients: [
      '500 Gr Bột bánh xèo',
      '150 Gr Bột chiên giòn',
      '1 Bó Hành lá',
      '5 Quả Trứng vịt',
      '500 Gr Thịt ba chỉ',
      '500 Gr Tôm tươi',
      '300 Gr Giá đỗ',
      '1 Lít nước',
      '500 ml Nước cốt dừa',
    ],
    steps: [
      'Làm nhân bánh xèo Nam bộ: Rửa sạch thịt và tôm. Cắt thịt thành những lát mỏng nhỏ. Cắt bỏ đầu và chân tôm, cho ra rổ để ráo. Xào sơ thịt ba chỉ và tôm cho gần chín (hoặc chín). Đập trứng vịt cho vào tô, đánh cho tan lòng trắng và lòng đỏ.',
      'Cách pha bột đổ bánh xèo: Cho 500gr bột làm bánh xèo vào thau, cho thêm 150gr bột chiên giòn cùng 1 lít nước sôi để nguội (nước lọc) vào khuấy cho bột tan hoàn toàn.',
      'Khi bột bánh xèo tan toàn hoàn, cho thêm 1 chén hành lá cắt nhuyễn, 500ml nước cốt dừa, trứng vịt đã đánh vào trộn đều.',
      'Cách đổ bánh xèo Nam bộ: Làm nóng chảo, cho vào ít mỡ (hoặc dầu ăn). Khi mỡ nóng cho thịt ba chỉ và tôm vào chiên sơ cho thơm. Đổ bột bánh vào chảo và đảo đều cho bột bánh xèo áo đều mặt chảo. Cho thêm ít giá đỗ lên trên và đậy nắp trong 2 - 3 phút.',
      'Bánh xèo Nam bộ được ăn kèm với nhiều loại rau sống miền Tây, có vị giòn mát và béo bùi hòa quyện với nước mắm pha nhạt ăn kèm bánh xèo chua ngọt, cay cay thật hấp dẫn. Nhiều nơi, ăn bánh xèo kèm với các loại rau rừng trở thành đặc sản rất thu hút du khách.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Thịt Gà Hấp Nấm Hương',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://image.cooky.vn/recipe/g3/24777/s640/recipe-cover-r24777.jpg',
    duration: 35,
    ingredients: [
      '500 Gr Thịt gà',
      '5 Cái Nấm hương',
      '15 ml Rượu trắng',
      '8 ml Dầu ăn',
      '30 ml Nước',
      '1 Cây Hành lá',
      '5 Gr Đường trắng',
      '20 Gr Bột bắp',
      '15 ml Nước tương',
      '10 Gr Gừng',
      '1 Muỗng cà phê Hạt nêm',
    ],
    steps: [
      'Gà rửa sạch chặt miếng vừa ăn, cho gà vào bát rồi thêm đường, rượu, nước tương, dầu ăn, bột bắp, súp nêm vị gà và nước vào trộn đều. Ướp gà 10 phút. Hành lá thái nhỏ, nấm hương ngâm nở. Thêm nấm hương vào tô gà trộn đêu.',
      'Cho gà đã ướp vào thố chịu nhiệt, thêm gừng và đặt vào nồi hấp, đun sôi khoảng 10 phút hoặc hấp cho đến khi gà chín là được. Gà chín rắc chút hành lá lên trên để thêm 1 phút là được.',
      'Cách làm thịt gà hấp nấm hương là một món ăn chế biến nhanh với nguyên liệu chủ đạo là gà và nấm hương. Bạn chỉ cần tẩm ướp gia vị theo cách thức trên và hấp chín là đã có một món tuyệt ngon cho bữa cơm gia đình mình.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Bánh Muffin Chocolate Chip',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://image.cooky.vn/recipe/g1/1260/s640/recipe1260-635571122418090776.jpg',
    duration: 45,
    ingredients: [
      '70 Gr Bơ lạt',
      '65 Gr Đường bột',
      '2 Quả Trứng gà',
      '120 Gr Bột mì',
      '30 Gr Bột nở (baking powder)',
      '45 Gr Chocolate đen',
      '30 ml Sữa tươi',
    ],
    steps: [
      'Bơ để ở nhiệt độ phòng cho mềm, rồi cho vào thố. Rây đường bột vào bơ rồi đánh đến khi bơ chuyển màu vàng nhạt thì thêm 1 quả trứng vào đánh cùng. Tiếp tục thêm quả trứng còn lại vào đánh đều.',
      'Bột mì trộn đều với bột nở rồi rây vào hỗn hợp bơ trứng vừa đánh. Đánh đến khi hỗn hợp mịn mượt là được. Lần lượt thêm sữa và chocolate chip vào trộn đều.',
      'Múc hỗn hợp bột cho vào khuôn đã lót sẵn giấy nến, lưu ý chỉ để bột cao khoảng 4/5 khuôn thôi nhé! Nướng bánh ở nhiệt độ 180 độ khoảng 30 phút là được.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salad Xà Lách Trộn',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://image.cooky.vn/recipe/g2/15862/s640/recipe15862-635816260124485100.jpg',
    duration: 30,
    ingredients: [
      '300 Gr Xà lách',
      '1 Muỗng cà phê Tỏi',
      '1 Muỗng canh Nước mắm',
      '2 Muỗng canh Sốt Mayonnaise',
      '1 Trái ớt',
      '1 Muỗng canh Nước cốt chanh',
      '1 Muỗng cà phê Đường trắng'
    ],
    steps: [
      'Xà lách nhặt, rửa sạch, cắt thành từng khúc, để ráo.',
      'Cho 1 muỗng cà phê tỏi băm, 1 muỗng canh nước mắm, 2 muỗng canh sốt mayonnaise, ớt cắt nhỏ, 1 muỗng canh nước cốt chanh, 1 muỗng cà phê đường trắng vào tô, trộn đều.',
      'Cuối cùng, cho xà lách vào hỗn hợp sốt mayonnaise, trộn đều lên là xong rồi!'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
