# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Album.destroy_all
npcuong = Album.create(creator: 'npcuong', view: 0, coverphoto: 'http://genk2.vcmedia.vn/DlBlzccccccccccccE5CT3hqq3xN9o/Image/2013/05/DuyTung/anh-9-013e7.jpg')

ktdanh = Album.create(creator: 'ktdanh', view: 0, coverphoto: 'http://genknews.genkcdn.vn/k:2016/img20160211125859390/dota-2-morphling--su-troi-day-cua-thuy-than-tren-dau-truong-chuyen-nghiep.jpg')

Photo.create(album_id: npcuong.id, creator: 'npcuong', view: 0, source: 'http://dailydota2.com/images/logos/teams/38464.png')
Photo.create(album_id: npcuong.id, creator: 'npcuong', view: 0, source: 'https://s-media-cache-ak0.pinimg.com/originals/48/78/11/48781195b16acef9e886e0e93b5b7d8e.jpg')
Photo.create(album_id: npcuong.id, creator: 'npcuong', view: 0, source: 'https://sd.keepcalm-o-matic.co.uk/i-w600/setu-picks-carry-ez-25-mmr.jpg')
Photo.create(album_id: npcuong.id, creator: 'npcuong', view: 0, source: 'https://i.ytimg.com/vi/rcElmF0kyK8/hqdefault.jpg')

