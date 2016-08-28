# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


IMAGE_URLS = [
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593603/great_migration_by_rhads-d8u3g5q_at6uuz.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593645/endless_journey_by_rhads-d5jyend_umlzrq.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593687/blue_planet_by_yuumei-d62mn5b_ocpa4o.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593732/somewhere_near__but_far_in_time__by_megatruh-d4nz3s5_pr7ryi.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593760/stairway_to_the_sky___by_megatruh-d5dj2ik_oaffr4.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593801/phantasmagoria___by_megatruh-d4172as_l1porm.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593833/berangkat__by_megatruh-d3aivav_bgdxon.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593873/infinite_dreams_by_rhads-d5eywh4_sne04d.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593896/very_secret_garden___by_megatruh-d51qr2f_spjagq.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593921/weightless_and_horizontal___by_megatruh-d537h4a_jwvqd4.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593952/firdous_e_bareen___by_megatruh-d46e5uf_z08nom.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465593977/illuminate_my_heart__by_megatruh-d5lqf10_re9eig.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594000/sailing_home_by_megatruh-d6d7ryd_ttsfl6.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594034/up___by_megatruh-d30dsjy_zlfiyt.png",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594067/flood___by_megatruh-d64jk09_d4evx3.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594102/the_world_is_new___by_megatruh-d5uar1y_oi5lts.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594126/deserere___by_megatruh-d5k9246_cb1pkx.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594150/quiet_calamity_by_megatruh-d76k76f_ni9qng.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594192/1f50891b645f6f0435dd8dce5120514f-d9fydcs_ltsfno.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594224/bc85aab5186cdeae4076abdef5afafad-d8lr3th_xsrznu.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594256/the_heavens_and_us__with_video_tutorial_link__by_yuumei-d9jrqmp_y1jgve.jpg"
]

IMAGE_TITLE = [
  "Sky for Dreamers",
  "Nature Salvation",
  "Beautiful World",
  "Great Migration",
  "Endless Journey",
  "Blue Planet",
  "Somewhere Near, But Far In Time",
  "Stairway to the Sky",
  "Phantasmagoria",
  "Berangkat.",
  "Infinite Dreams",
  "Very Secret Garden",
  "Weightless and Horizontal",
  "Firdous e Bareen",
  "Illuminate my Heart",
  "Sailing Home",
  "Up",
  "Flood",
  "The World Is New",
  "Deserere",
  "Quiet Calamity",
  "Cloud Regatta",
  "Moment",
  "The Heavens and Us"
]

ALBUM_IMAGE_URLS = [
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595759/Tiger_whvlp9.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595789/Waves_fulhu0.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596589/Starry_lake_u9sl8y.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597017/Paris_xtcegp.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597037/Baby_ycxlxj.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597085/PUppy_tfhcmj.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597114/Tiger_2_fblwps.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597144/Forest_ni2gjm.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597214/Puppy2_ewtqdm.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597240/waterfall_pxyxao.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596615/Whale_kwgq9v.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596655/Stag_tqpt7k.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596676/Cat2_cf5pcx.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596702/tumblr_mk2oor3uZa1qggs6ao1_500_f76kae.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596727/Bike_feqonw.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596813/tumblr_mrx3axMGaB1rnlb7lo1_r1_400_iikbet.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596840/Aquarium_exgmol.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596968/Mountains_sgbtc6.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465596994/Balloons_g7ggzu.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465597267/Disneyland2_xzd9wk.png"
]

ALBUM_IMAGE_TITLES = [
  "Serenity",
  "Pride",
  "Horizon",
  "Leave the Planet",
  "La Fantasie",
  "Recover",
  "Silence",
  "Dream",
  "Venice Beach",
  "Venezia",
  "Atlantis",
  "Day Dream",
  "Float",
  "Paris",
  "Curiosity",
  "Waiting",
  "Eye of the Predator",
  "Magic Forest",
  "Moment of Happiness",
  "Waterfall",
  "A Day of Happiness"
]

GUEST_ALBUM_IMAGES = [
  "http://res.cloudinary.com/dkieltxya/image/upload/v1472253025/nyrcwec0wrhu8mjvyuvt.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595013/tumblr_n3qp7rc66H1rr7g6fo1_500_iqodcz.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595041/Space_ggtjq3.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595068/Pink_Boutique_v7b8st.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595090/Swing_llabrx.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595117/Snow_Leopard_yehngu.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595136/Underwater_xsp3zp.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595158/Night_Sky_nb0ggh.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595180/Love_wi1oqp.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595202/Cat1_bb53o3.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595223/Splash_x2oivi.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595246/White_Tiger_eyyzj0.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595267/Disneyland_zrb74l.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595289/Doggie_jfqpgx.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595316/Girl_Gun_Tattoo_hfapkx.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595346/Sunset_Kiss_hyxzfm.png",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595370/Expedition_f5ulom.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595390/America_flgpva.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595415/Japan_f7kn5o.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595444/Sunset_ynescs.png",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465595472/photo-1430713976611-6c0b558c239e_vrq2lx.jpg"
]

GUEST_ALBUM_TITLES = [
  "Forever",
  "Tranquility",
  "Wonder",
  "Pink Sky Boutique",
  "I Found Heaven in my Dreams",
  "Snow Leopard",
  "A New World",
  "Milky Way Path",
  "",
  "Focus",
  "Gentle",
  "White Tiger",
  "Happiest Place on Earth",
  "",
  "",
  "Warmth",
  "Adventure",
  "",
  "",
  "Good Night",
  ""
]

TRADITIONAL_URLS = [
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594500/tumblr_n37n63Hyla1rnxcz2o1_500_qlthqx.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594533/rose_skull_lady_gfzd0r.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594587/tumblr_mdfzxf3JkM1qegbl1o1_500_tjgeov.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594610/Lady_lzeuyz.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594629/Skull_qhpzvr.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594653/In_Your_Arms_uxjjqh.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594675/1099025-7_eax8v6.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594695/Ballerina_tow0sj.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594715/Sunflower_yr0tgd.jpg",
  "https://res.cloudinary.com/kasperkuo/image/upload/v1465594744/Wolf_ldwcjr.jpg"
]

TRADITIONAL_TITLES = [
  "",
  "",
  "",
  "",
  "",
  "In Your Arms",
  "The Sunshine Was More Transient",
  "Marionette",
  "puRity",
  "Howling Wolf"
]

TRADITIONAL_DESCRIPTION = [
  "",
  "",
  "",
  "",
  "",
  "by Sara Riches",
  "by Sara Riches",
  "by Sere Rivers",
  "by Mekhz",
  "source: https://www.flickr.com/photos/241730/"
]


ALBUM_IMAGE_URLS.length.times do |i|
  Image.create!(
    image_url: ALBUM_IMAGE_URLS[i],
    user_id: 2,
    image_type: "Photography",
    title: ALBUM_IMAGE_TITLES[i],
    album_id: 2
  )
end

GUEST_ALBUM_IMAGES.length.times do |i|
  Image.create!(
    image_url: GUEST_ALBUM_IMAGES[i],
    user_id: 3,
    image_type: "Photography",
    title: GUEST_ALBUM_TITLES[i],
    album_id: 3
  )
end

IMAGE_URLS.length.times do |i|
  Image.create!(
    image_url: IMAGE_URLS[i],
    user_id: 1,
    image_type: "Digital",
    title: IMAGE_TITLE[i],
    album_id: 1
  )
end

TRADITIONAL_URLS.length.times do |i|
  Image.create!(
    image_url: TRADITIONAL_URLS[i],
    user_id: 1,
    image_type: "Traditional",
    title: TRADITIONAL_TITLES[i],
    description: TRADITIONAL_DESCRIPTION[i]
  )
end

User.create!(
  name: "Kasper Kuo",
  email: "kasper@example.com",
  password: "password"
)

User.create!(
  name: "Shaghig",
  email: "shaghig@example.com",
  password: "password"
)

User.create!(
  name: "Guest",
  email: "guest@example.com",
  password: "password"
)

Album.create!(
  title: "Imagine",
  cover_photo_url: "https://orig08.deviantart.net/c8c1/f/2015/345/6/6/the_heavens_and_us__with_video_tutorial_link__by_yuumei-d9jrqmp.jpg",
  user_id: 1
)

Album.create!(
  title: "Serenity",
  cover_photo_url: "https://images.unsplash.com/photo-1461468611824-46457c0e11fd?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=a035cc63ca5112addcce8399c7cd432a",
  user_id: 2
)

Album.create!(
  title: "Forever",
  cover_photo_url: "https://images.unsplash.com/reserve/RONyPwknRQOO3ag4xf3R_Kinsey.jpg?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=060404b95bb482ecb25161f0e4b69560",
  user_id: 3
)

# IMAGE_URLS = [
#   "https://hd.unsplash.com/photo-1469719847081-4757697d117a",
#   "https://hd.unsplash.com/photo-1467521335787-2f0fc0f0e9a0",
#   "https://hd.unsplash.com/photo-1466837838619-c8f5b8f0c166",
#   "https://hd.unsplash.com/photo-1457365050282-c53d772ef8b2",
#   "https://hd.unsplash.com/photo-1467321638755-7246fd0dc1f3",
#   "https://hd.unsplash.com/photo-1465479423260-c4afc24172c6",
#   "https://hd.unsplash.com/photo-1462524500090-89443873e2b4",
#   "https://hd.unsplash.com/photo-1451188214936-ec16af5ca155",
#   "https://hd.unsplash.com/photo-1468476775582-6bede20f356f",
#   "https://hd.unsplash.com/photo-1468245856972-a0333f3f8293",
#   "https://hd.unsplash.com/photo-1466046690866-98181611563d",
#   "https://hd.unsplash.com/photo-1465284958051-1353268c077d",
#   "https://hd.unsplash.com/photo-1465232377925-cce9a9d87843",
#   "https://hd.unsplash.com/photo-1464740042629-b78a46b310ae",
#   "https://hd.unsplash.com/photo-1464695110811-dcf3903dc2f4",
#   "https://hd.unsplash.com/photo-1451479456262-b94f205059be",
#   "https://hd.unsplash.com/photo-1467348733814-f93fc480bec6",
#   "https://hd.unsplash.com/photo-1467173572719-f14b9fb86e5f",
#   "https://hd.unsplash.com/photo-1466721591366-2d5fba72006d",
#   "https://hd.unsplash.com/photo-1466154714956-9f5f64682fcc",
#   "https://hd.unsplash.com/photo-1461295025362-7547f63dbaea",
#   "https://hd.unsplash.com/photo-1460400408855-36abd76648b9",
#   "https://hd.unsplash.com/reserve/Lt0DwxdqRKSQkX7439ey_Chaz_fisheye-11.jpg",
#   "https://hd.unsplash.com/photo-1464822759023-fed622ff2c3b"
# ]
#
# IMAGE_TITLE = [
#   "Sky for Dreamers",
#   "Nature Salvation",
#   "Beautiful World",
#   "Great Migration",
#   "Endless Journey",
#   "Blue Planet",
#   "Somewhere Near, But Far In Time",
#   "Stairway to the Sky",
#   "Phantasmagoria",
#   "Berangkat.",
#   "Infinite Dreams",
#   "Very Secret Garden",
#   "Weightless and Horizontal",
#   "Firdous e Bareen",
#   "Illuminate my Heart",
#   "Sailing Home",
#   "Up",
#   "Flood",
#   "The World Is New",
#   "Deserere",
#   "Quiet Calamity",
#   "Cloud Regatta",
#   "Moment",
#   "The Heavens and Us"
# ]
#
# ALBUM_IMAGE_URLS = [
#   "https://hd.unsplash.com/photo-1469719847081-4757697d117a",
#   "https://hd.unsplash.com/photo-1467521335787-2f0fc0f0e9a0",
#   "https://hd.unsplash.com/photo-1466837838619-c8f5b8f0c166",
#   "https://hd.unsplash.com/photo-1457365050282-c53d772ef8b2",
#   "https://hd.unsplash.com/photo-1467321638755-7246fd0dc1f3",
#   "https://hd.unsplash.com/photo-1465479423260-c4afc24172c6",
#   "https://hd.unsplash.com/photo-1462524500090-89443873e2b4",
#   "https://hd.unsplash.com/photo-1451188214936-ec16af5ca155",
#   "https://hd.unsplash.com/photo-1468476775582-6bede20f356f",
#   "https://hd.unsplash.com/photo-1468245856972-a0333f3f8293",
#   "https://hd.unsplash.com/photo-1466046690866-98181611563d",
#   "https://hd.unsplash.com/photo-1465284958051-1353268c077d",
#   "https://hd.unsplash.com/photo-1465232377925-cce9a9d87843",
#   "https://hd.unsplash.com/photo-1464740042629-b78a46b310ae",
#   "https://hd.unsplash.com/photo-1464695110811-dcf3903dc2f4",
#   "https://hd.unsplash.com/photo-1451479456262-b94f205059be",
#   "https://hd.unsplash.com/photo-1467348733814-f93fc480bec6",
#   "https://hd.unsplash.com/photo-1467173572719-f14b9fb86e5f",
#   "https://hd.unsplash.com/photo-1466721591366-2d5fba72006d"
#
# ]
#
# ALBUM_IMAGE_TITLES = [
#   "Serenity",
#   "Pride",
#   "Horizon",
#   "Leave the Planet",
#   "La Fantasie",
#   "Recover",
#   "Silence",
#   "Dream",
#   "Venice Beach",
#   "Venezia",
#   "Atlantis",
#   "Day Dream",
#   "Float",
#   "Paris",
#   "Curiosity",
#   "Waiting",
#   "Eye of the Predator",
#   "Magic Forest",
#   "Moment of Happiness",
#   "Waterfall",
#   "A Day of Happiness"
# ]
#
# GUEST_ALBUM_IMAGES = [
#   "https://hd.unsplash.com/photo-1462146449396-2d7d4ba877d7",
#   "https://hd.unsplash.com/photo-1464013778555-8e723c2f01f8",
#   "https://hd.unsplash.com/photo-1463412855783-af97e375664b",
#   "https://hd.unsplash.com/photo-1461770354136-8f58567b617a",
#   "https://hd.unsplash.com/photo-1458668383970-8ddd3927deed",
#   "https://hd.unsplash.com/photo-1463123081488-789f998ac9c4",
#   "https://hd.unsplash.com/photo-1462733441571-9312d0b53818",
#   "https://hd.unsplash.com/photo-1462331940025-496dfbfc7564",
#   "https://hd.unsplash.com/photo-1461360370896-922624d12aa1",
#   "https://hd.unsplash.com/photo-1457144759132-40d119c2f120",
#   "https://hd.unsplash.com/photo-1452473767141-7c6086eacf42",
#   "https://hd.unsplash.com/photo-1434434319959-1f886517e1fe",
#   "https://hd.unsplash.com/photo-1440613905118-99b921706b5c",
#   "https://hd.unsplash.com/photo-1457685373807-8c4d8be4c560",
#   "https://hd.unsplash.com/photo-1432637194732-34cedd856522",
#   "https://hd.unsplash.com/photo-1416169607655-0c2b3ce2e1cc",
#   "https://hd.unsplash.com/photo-1460899960812-f6ee1ecaf117"
# ]
#
# GUEST_ALBUM_TITLES = [
#   "Forever",
#   "Tranquility",
#   "Wonder",
#   "Pink Sky Boutique",
#   "I Found Heaven in my Dreams",
#   "Snow Leopard",
#   "A New World",
#   "Milky Way Path",
#   "",
#   "Focus",
#   "Gentle",
#   "White Tiger",
#   "Happiest Place on Earth",
#   "",
#   "",
#   "Warmth",
#   "Adventure"
# ]
#
# TRADITIONAL_URLS = [
#   "https://hd.unsplash.com/photo-1462331940025-496dfbfc7564",
#   "https://hd.unsplash.com/photo-1461360370896-922624d12aa1",
#   "https://hd.unsplash.com/photo-1457144759132-40d119c2f120",
#   "https://hd.unsplash.com/photo-1452473767141-7c6086eacf42",
#   "https://hd.unsplash.com/photo-1434434319959-1f886517e1fe",
#   "https://hd.unsplash.com/photo-1440613905118-99b921706b5c",
#   "https://hd.unsplash.com/photo-1457685373807-8c4d8be4c560",
#   "https://hd.unsplash.com/photo-1432637194732-34cedd856522",
#   "https://hd.unsplash.com/photo-1416169607655-0c2b3ce2e1cc",
#   "https://hd.unsplash.com/photo-1460899960812-f6ee1ecaf117"
# ]
#
# TRADITIONAL_TITLES = [
#   "",
#   "",
#   "",
#   "",
#   "",
#   "In Your Arms",
#   "The Sunshine Was More Transient",
#   "Marionette",
#   "puRity",
#   "Howling Wolf"
# ]
#
# TRADITIONAL_DESCRIPTION = [
#   "",
#   "",
#   "",
#   "",
#   "",
#   "by Sara Riches",
#   "by Sara Riches",
#   "by Sere Rivers",
#   "by Mekhz",
#   "source: https://www.flickr.com/photos/241730/"
# ]
#
#
# ALBUM_IMAGE_URLS.length.times do |i|
#   Image.create!(
#     image_url: ALBUM_IMAGE_URLS[i],
#     user_id: 2,
#     image_type: "Photography",
#     title: ALBUM_IMAGE_TITLES[i],
#     album_id: 2
#   )
# end
#
# GUEST_ALBUM_IMAGES.length.times do |i|
#   Image.create!(
#     image_url: GUEST_ALBUM_IMAGES[i],
#     user_id: 3,
#     image_type: "Photography",
#     title: GUEST_ALBUM_TITLES[i],
#     album_id: 3
#   )
# end
#
# IMAGE_URLS.length.times do |i|
#   Image.create!(
#     image_url: IMAGE_URLS[i],
#     user_id: 1,
#     image_type: "Digital",
#     title: IMAGE_TITLE[i],
#     album_id: 1
#   )
# end
#
# TRADITIONAL_URLS.length.times do |i|
#   Image.create!(
#     image_url: TRADITIONAL_URLS[i],
#     user_id: 1,
#     image_type: "Traditional",
#     title: TRADITIONAL_TITLES[i],
#     description: TRADITIONAL_DESCRIPTION[i]
#   )
# end
#
# User.create!(
#   name: "Kasper Kuo",
#   email: "kasper@example.com",
#   password: "password"
# )
#
# User.create!(
#   name: "Shaghig",
#   email: "shaghig@example.com",
#   password: "password"
# )
#
# User.create!(
#   name: "Guest",
#   email: "guest@example.com",
#   password: "password"
# )
#
# Album.create!(
#   title: "Imagine",
#   cover_photo_url: "https://orig08.deviantart.net/c8c1/f/2015/345/6/6/the_heavens_and_us__with_video_tutorial_link__by_yuumei-d9jrqmp.jpg",
#   user_id: 1
# )
#
# Album.create!(
#   title: "Serenity",
#   cover_photo_url: "https://images.unsplash.com/photo-1461468611824-46457c0e11fd?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=a035cc63ca5112addcce8399c7cd432a",
#   user_id: 2
# )
#
# Album.create!(
#   title: "Forever",
#   cover_photo_url: "https://images.unsplash.com/reserve/RONyPwknRQOO3ag4xf3R_Kinsey.jpg?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=060404b95bb482ecb25161f0e4b69560",
#   user_id: 3
# )
