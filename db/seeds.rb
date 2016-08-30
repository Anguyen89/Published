# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


IMAGE_URLS = [
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472519274/photo-1471623817296-aa07ae5c9f47_r82jbb.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507881/photo-1472200765738-686d937f700b_owqtnv.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507858/photo-1472215001262-9605640fdcdf_naxkxw.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507843/photo-1472215349833-a8b0faefb109_gbxzuy.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507827/photo-1472215501226-08165992f36e_e72opw.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507811/photo-1472222762265-7aa06b6f5826_fwzp7t.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507793/photo-1472227069987-bb5f973be7a7_qdy6cn.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507779/photo-1472235008642-bb3ce23994ac_xk2e36.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507762/photo-1472235477785-4a74ac750010_cryjca.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507741/photo-1472282247117-0f0d016ec570_zwl7yz.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507720/photo-1472289878383-abb5b8a126f0_ykz0vb.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507704/photo-1472310301993-6d435adfda7b_tmzras.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507689/photo-1472313420546-a46e561861d8_jgggcr.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507659/photo-1472324377224-f42c0943287b_zmouid.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507643/photo-1472329636310-d881a63f180c_p80loq.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507626/photo-1472345113808-03a78a564cc5_uajdda.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507612/photo-1472349552211-67ec4c92eba2_qqkzsk.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507565/photo-1472360276433-6621885b4e8f_xmamud.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507545/photo-1472377723522-4768db9c41ce_bwoafk.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507530/photo-1472392036208-33c459d5c8b9_pqdrts.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507510/photo-1472405044831-bb7c502fd2d7_ogppsu.jpg"
]

GUEST_IMAGES = [
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507322/photo-1470434151738-dc5f4474c239_yucmtg.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507307/photo-1444412667101-4eccfdeeff07_ks5gsi.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507286/photo-1454779132693-e5cd0a216ed3_ymuviy.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507263/photo-1464963160608-a6834f70b421_cahpbd.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507238/photo-1470010762743-1fa2363f65ca_suiuk5.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507220/photo-1470214304380-aadaedcfff84_xxldia.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507196/photo-1472376758045-62f519fc676d_iy1dvc.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507140/sample.jpg"
]

OTHER_USER = [
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507491/photo-1472419551702-dc4862cad8f9_ves8yc.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507475/photo-1472430023262-9a743f7570cb_ruoxs5.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507458/photo-1472437605411-8816f0e62691_lchrxv.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507441/photo-1472452049192-db15def0be25_ma7fi0.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507414/photo-1472457974886-0ebcd59440cc_vt1nt8.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507392/photo-1472461936147-645e2f311a2b_dwi1zl.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507369/photo-1472466555565-28e0cdda66e9_ugtdmo.jpg",
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472507342/photo-1464800959563-472c0567132f_tqecoc.jpg"
]

IMAGE_TITLE = [
  "Rooting",
  "Serenity",
  "Great Outdoors",
  "Swiss Alps Peak",
  "Killer Instinct",
  "The Climb",
  "The Lab",
  "Carabeaners",
  "Dazed and Confused",
  "Open Road to Heaven",
  "Blue Flow",
  "Sunflower Wonderland",
  "Crawl",
  "Open Sky",
  "Chirp"
]

  OTHER_TITLE = [
    "Retirement",
    "....",
    "Kick Push",
    "Desert..",
    "Strom Trooper Training",
    "Quench",
    "Views",
    "Light"
  ]

 GUEST_TITLE = [
   "Cubana",
   "Good Morning Saigon",
   "lights",
   "Welder in the Night",
   "Tranquility",
   "Silver Surfer",
   "Buildings",
   "life"
 ]






OTHER_USER.length.times do |i|
  Image.create!(
    image_url: OTHER_USER[i],
    user_id: 2,
    title: OTHER_TITLE[i],
    album_id: 2
  )
end

GUEST_IMAGES.length.times do |i|
  Image.create!(
    image_url: GUEST_IMAGES[i],
    user_id: 3,
    title: GUEST_TITLE[i],
    album_id: 3
  )
end

IMAGE_URLS.length.times do |i|
  Image.create!(
    image_url: IMAGE_URLS[i],
    user_id: 1,
    title: IMAGE_TITLE[i],
    album_id: 1
  )
end


User.create!(
  name: "Albert Nguyen",
  email: "Albert.la.nguyen@gmail.com",
  password: "password"
)

User.create!(
  name: "Lundy",
  email: "lundy@random.com",
  password: "password"
)

User.create!(
  name: "Guest",
  email: "guest@random.com",
  password: "password"
)
