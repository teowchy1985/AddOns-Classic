local _, ns = ...
local points = ns.points

ns.bestPet = "對獵人來說，最好的寵物可以說是貓科。\n\n以下是一些稀有/精英寵物，可以馴服：\n\n"
			.."莫克瓦     - 7級，血蹄村西邊，莫高雷\n拉魯克     - 7級，回音群島，杜洛塔\n"
			.."暮色潛行者     - 9級，泰達希爾\n剃刀     - 10級，雷霆崖東邊。 30+ 分鐘刷新\n"
			.."迪蘇     - 13級，貧瘠之地北部\n暗爪     - 13級，奧伯丁北部，黑海岸\n"
			.."胡瑪爾     - 23級，棘齒城，貧瘠之地。 8+ 小時刷新\n"
			.."阿拉加     - 35級，奧特蘭克。 2-3 天刷新\n斷牙     - 37級，荒蕪之地\n"
			.."巴加瑟拉     - 40級，精英，荊棘谷\n邦加拉什國王     - 43級，精英，荊棘谷\n\n"
			.."對於那些喜歡風蛇的人... 當然是哈卡的子嗣\n"
			.."你可以在祖爾格拉布找到他。 60級精英，並且當然還有\n"
			.."石爪山脈的幼雛翼龍（僅限），作為獲得擊殺命令的共同獎勵"

ns.chestTitle = ns.L["被遺忘的補給"] .." - " ..ns.L[ "等級" ] .."\n< "
ns.chest1 = ns.chestTitle ..ns.L[ "友善" ]
ns.chestContent1 = "* 4 x 10級法師捲軸\n* 專業配方\n* 綠色、白色、灰色物品"
ns.chest2 = ns.chestTitle ..ns.L[ "尊敬" ]
ns.chestContent2 = "* 4 x 20級法師捲軸\n* 專業配方\n* 綠色、灰色物品\n* 8格包包"
ns.chest3 = ns.chestTitle ..ns.L[ "尊敬" ]
ns.chestContent3 = "* 4 x 20級法師捲軸\n* 專業配方\n* 灰色、綠色、藍色物品\n* 10格包包"
ns.chest4 = ns.chestTitle ..ns.L[ "崇敬" ]
ns.chestContent4 = "* 5 x 40級法師捲軸\n* 專業配方\n* 灰色、綠色、藍色物品\n* 10格包包"
ns.chest5 = ns.chestTitle ..ns.L[ "崇敬" ]
ns.chestContent5 = "* 5 x 40級法師捲軸\n* 專業配方\n* 灰色、綠色、藍色物品\n* 12格包包"
ns.chest6 = ns.chestTitle ..ns.L[ "崇敬" ]
ns.chestContent6 = "* 5 x 40級法師捲軸\n* 專業配方\n* 灰色、綠色、藍色物品\n* 12格包包"
ns.chest7 = ns.chestTitle ..ns.L[ "崇拜" ]
ns.chestContent7 = "* 5 x 40級法師捲軸\n* 專業配方\n* 灰色、綠色、藍色物品\n* 14格包包"
ns.cozySleepingBag = "第一步： " ..( ( ns.faction == "Alliance" ) and "前往西部荒野的艾歷克斯頓農場" or
			"前往陶拉祖南方道路上的燒毀的塔，貧瘠之地" ) .."\n在廢墟中尋找燒毀的殘骸。\n\n"
			.."第二步： " ..( ( ns.faction == "Alliance" ) and "前往陶拉祖南方道路上的燒毀的塔，貧瘠之地。" or
			"前往西部荒野的艾歷克斯頓農場" )
			.."\n在廢墟中尋找燒毀的殘骸。\n從附近釘著的木板上領取下一個任務。\n\n"
			.."第三步： 前往石爪山脈，尋找一個\n廢棄的營地。 它位於太陽石撤退點東北方的一條路上。"
			.."那裡有一個口袋垃圾，在一個盒子上。\n\n"
			.."第四步： 向北走，直接上一座小山，尋找一堆土。\n"
			.."點擊以完成 \"爭奪\"。 接受 \"濕活\"。\n\n"
			.."第五步： 洛克莫丹，位於濕地邊界的水壩邊緣。\n點擊老鷹雕像以完成 "
			.."並開始任務。\n\n"
			.."第六步： 爬上索拉丁之牆，與希爾斯布萊德和阿拉希\n高地接壤。 從希爾斯布萊德一側通過 "
			.."一輛損壞的馬車爬上去。\n 繼續攀登，你會發現一個大廳和一個袋子。\n\n"
			.."注意： 這個任務鏈會獎勵你 8 件學生口糧。\n 目前是獲得這個休息經驗加成的唯一方法！"
ns.felPortals = "術士探險者小鬼使用，\n法師用於他們的邪火衝擊符文等"
ns.felRift = "不獎勵法師邪火衝擊法術筆記，\n也不獎勵術士法術守衛符文。\n"
			.."邪布和惡魔/黑暗符文的來源"
ns.gnomeregan = "(1) 從任何\n諾莫瑞根垃圾或黑鐵大使身上拾取沾滿污垢的廢料。\n\n"
			.."(2) 在宿舍，將其加上 30 銀插入\n廢料回收機 9000。 你需要 40 級。\n\n"
			.."附近的齊里提供幫助進行修理，您\n提供 10 個秘銀錠 (AH)、5 個高等\n"
			.."神秘精華 (AH)、3 個 GG12-082 卡匣保險絲\n(機械諾莫瑞根垃圾) 和一個原始 G-7\n"
			.."C.O.R.E. 處理器，如下所述：\n\n(3) 擊殺諾莫瑞根入口處的科技機器人（40級精英）\n"
			.."獲得腐蝕處理器。 您現在正在進行第三個\n任務。 與齊里交談。\n\n"
			.."(4) 前往藏寶海灣的史酷奇。 第四個任務讓你\n收集來自凄涼之地、塵泥沼澤\n"
			.."菲拉斯和塔納利斯的信標。\n\n(5) 回到藏寶海灣，史酷奇將你傳送到\n"
			.."菲拉斯的沃達爾·萬德吉爾。 注意： 他的\n自動裝置會將你從他的基地擊落，如果你\n"
			.."對他們打噴嚏。 無論如何，一個爐石\n設置到海灣是一個勝利。\n\n"
			.."(6) 從納迦怪物身上刷取花費的虛空核心，以及\n從陰影生物身上刷取黑暗微粒，該生物\n"
			.."隨機從任何獎勵你經驗值的怪物中產生。\n\n(7) 返回諾莫瑞根的齊里領取獎勵"
ns.gnomereganTitle = "諾莫瑞根裝備指南"
ns.nightmare = "(1) 在 50 級時，進入灰谷的翡翠夢境傳送門。 向南走到\n"
			.."戰歌伐木場的後面。 繼續直到你收到 \"麻痺恐懼光環的減益效果\"。\n"
			.."離開夢境並與菲爾德隊長漢娜拉交談以獲取第一個任務。\n\n"
			.."(2) 與月光林地的洛格納爾交談。 他會直接將你送到悲傷沼澤西南\n"
			.."角的伊薩留斯。\n\n"
			.."(3) 在阿塔哈卡神廟/沉沒的神廟中，你必須盡可能地推進到被選者之巢穴。\n"
			.."\"正在下降\"現在將被滿足。 稍後返回伊薩留斯。\n\n"
			.."(4) 你現在被送回月光林地的洛格納爾。 交出並等待陰影\n"
			.."人物出現。 與她交談並領取下一個任務和下一個任務。\n\n"
			.."(5) 下一站是荊棘谷的藏寶海灣。 一個受傷的侏儒會送\n"
			.."你到加基羅島上的一個小小魚人那裡。 他旁邊是一個小洞穴。 取回\n"
			.."護腕並前往月光林地。\n\n"
			.."(6) 陰影人物為你準備了一個新任務。 返回灰谷，裝備\n"
			.."進入夢境之前的護腕。 請注意，她已經更改了它們！ 前往你的\n"
			.."之前的 \"減益效果\" 位置。 一個噩夢融合體在該區域巡邏。 殺死它，但是\n"
			.."你需要一個 5 人隊伍。 強力打擊。 它掉落紫色的噩夢披風！！！\n\n"
			.."(7) 返回陰影人物。 她現在是您第 3 階段裝備的首選！"
ns.nightmareTitle = "噩夢裝備指南"
ns.twoMeditate = "在 17 級時，前往暴風城的公園（人類 /矮人），達納蘇斯的月神殿（暗夜精靈），\n"
			.."幽暗城的戰爭區（所有部落）從牧師訓練師那裡獲得種族\n任務。\n\n"
			.."最終你將能夠在種族之間分享多個冥想\n增益效果（也是派系。 錯誤？）。\n\n"
			.."玩家 1: /kneel; 玩家 2: /pray"
ns.twoMeditateTitle = "牧師兩次冥想"
ns.voidTouchedTitle = "虛空觸碰裝備指南"
ns.voidTouched = "(1) 達到 25 級並在其中一個方面達到 100\n鍛造、製皮或裁縫。\n\n"
			.."(2) 從拍賣行購買融合後悔藥劑。\n 煉金術士可以從 Zixil 購買此配方，在塔倫米爾和南海鎮之間的路上\n"
			.."在紅木/艾爾文森林到黑海岸的路上的 Kzixx。\n\n"
			.."(3) 在灰谷佐拉姆海岸找到死去的暮光邪教徒。\n 喝下藥劑並與他交談。\n\n"
			.."(4) 在黑暗深淵中，擊敗第二個首領加穆拉。\n 與老瑟拉基斯的屍體互動。\n\n"
			.."(5) 在棘齒城接受來自 N'ora Anyheart 的任務。 奇怪的\n灰塵 x 40、高等魔法精華 x 5、小閃光碎片 x 2、\n"
			.."一把移動鱗片，5 金。 鱗片從老\n瑟拉基斯身上掉落。 其他東西從拍賣行購買。\n\n"
			.."(6) 憑藉她的護身符獎勵，返回黑暗深淵並前往凱爾里斯的\n水下洞穴。 掠奪工匠的箱子。 \"盒子\"\n"
			.."神奇地出現在你的背包中。\n\n(7) 前往奧特蘭克山脈。 使用柱子摧毀盒子。\n\n"
			.."(8) 一個陰影人物出現。 互動。 你必須選擇\n\"好吧，給我看看\" 選項。\n\n"
			.."(9) 恭喜。 您現在擁有每個第 1 階段配方。 可能是 BiS！\n\n"
			.."(從 (6) 重複以獲得另一個碎片)"


-- Icons:	1 - 7 	Chests
--			15		Void-Touched
--			16		Best Pets
--			17		舒適的睡袋
--			18		Fel Portals
--			19		Priest L17/18 Dual Meditation
--			20		Gnomeregan Gear
--			21		Nightmare Gear
--			22		Nightmare Bloom / Seed


--=======================================================================================================
--
-- EASTERN KINGDOMS
--
--=======================================================================================================

points[ 1416 ] = { -- Alterac Mountains
	[38604700] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[39805290] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[41404000] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[42454790] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[47453490] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[59904345] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[61204350] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5, continent=true },
	[61604045] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[61604570] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[62704060] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[63354345] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[63404470] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },

	[35355320] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6, continent=true },
	[35405410] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[35805570] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[36205500] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[37451530] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[38701490] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[39501520] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[40352045] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[47501710] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[53602110] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[56402705] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[58403040] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },

	[31007260] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
	[31408480] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[38808980] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1417 ] = { -- Arathi Highlands
	[31102600] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[32402670] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[33453090] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[33702740] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[61207290] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[63606780] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5, continent=true },
	[64607380] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[66106380] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[68007820] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[70607000] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[73806510] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },

	[16708745] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[18206650] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[18806500] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[19806890] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[20708960] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[20908490] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[22006490] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[22706735] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[23458480] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[25106435] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[25806570] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6, continent=true },
	[28306570] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[28456285] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[53107710] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[53457440] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[53707990] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[53907570] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[54208145] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[82803340] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[84002880] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[85603030] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[85603245] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },

	[22502420] = { name="匆忙捲起的釘板", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, continent=true,
						tip="第六步. 查看希爾斯布萊德地圖\n以了解從哪裡開始這一步" },
}

points[ 1418 ] = { -- Badlands
	[13807500] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[29505630] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6, continent=true },
	[40602590] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[40802810] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[41552640] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[42302880] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[50806830] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[53003490] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[53602945] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[62707040] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },

	[06459045] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[07609600] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[07908570] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[09609330] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[45203520] = { npc=2850, name="斷齒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
	[54801480] = { npc=2850, name="斷齒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[63003020] = { npc=2850, name="斷齒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1419 ] = { -- Blasted Lands
	[41901320] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[42501445] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44301210] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[62403420] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[65553350] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[66902960] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },

	[35005480] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[41303350] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[43602530] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[46603910] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[48804830] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[56203660] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[60204640] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[62003920] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
}

points[ 1428 ] = { -- Burning Steppes
	[20654345] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[22605240] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[24206460] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[29504370] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[36306120] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[37504230] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[57454530] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[60006500] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift, continent=true },
	[69302645] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[72103140] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[85404360] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[93405920] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
}

points[ 1430 ] = { -- Deadwind Pass
}

points[ 1426 ] = { -- Dun Morogh
	[21705200] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[23105200] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[23305420] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[23505240] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[26005120] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[26104120] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[26803640] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34005110] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36104010] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[38704330] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[39204650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[40104810] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[41004890] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[41504440] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[42003590] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[42804710] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43504920] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[66905960] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[67506070] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[68905940] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[71005900] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[71205050] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[71605180] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[72104990] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[73005350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[74606170] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[74805650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[76005810] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[77906190] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[79305870] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[79705470] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
}

points[ 1431 ] = { -- Duskwood
	[13202730] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[14704440] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[21457345] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[22007200] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[24107200] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[24452725] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[31453245] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3, continent=true },
	[31603960] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[32602820] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[32804790] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[34755455] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[35952740] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[51806220] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[52505930] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[52605780] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[59202525] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[61802540] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[81805870] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[81805980] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[82206135] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	
	[12803370] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[16452885] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[17603620] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[26003640] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[33206945] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[33407620] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[34407590] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[35008130] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[35508030] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[36558355] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[36808045] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4, continent=true },
	[37207790] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[38108010] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[40307545] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[49357735] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[50607710] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[57703080] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[60304090] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[60704145] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[60907545] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[64107290] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[64405170] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[65706745] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[65906930] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[66107640] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[71307245] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[71607180] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[73207220] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[76903540] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[77303645] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[78703245] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },

	[18002560] = { title=ns.twoMeditateTitle, name="恐怖之狼 (各種)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子. 用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },
	[37602240] = { title=ns.twoMeditateTitle, name="恐怖之狼 (各種)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子. 用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },
	[55406160] = { title=ns.twoMeditateTitle, name="恐怖之狼 (各種)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子. 用於第一個任務", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },
	[59001960] = { title=ns.twoMeditateTitle, name="恐怖之狼 (各種)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子. 用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },
	[68203400] = { title=ns.twoMeditateTitle, name="恐怖之狼 (各種)", icon=19, class="PRIEST", level=17, guide=ns.twoMeditate,
					tip="從這些怪物身上收集爪子. 用於第一個任務", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },

	[81801980] = { npc=3134, name="Kzixx", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="煉金術士可以購買精煉的藥劑\n後悔的合成配方",
					quest={ 78909 }, questName={ "移動鱗片護符" }, continent=true },
}

points[ 1423 ] = { -- Eastern Plaguelands
	[22003420] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[24601950] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[28704430] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[31703050] = { name="大型惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[38101650] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[38202580] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[38204000] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[82603720] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift, continent=true },
	[82804040] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[83504610] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[84204320] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[86904250] = { name="惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
}

points[ 1429 ] = { -- Elwynn Forest
	[12463405] = { title=ns.twoMeditateTitle, npc=11397, name="娜拉·米德羅斯", icon=19, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="從這裡開始", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },
	[19392475] = { title=ns.twoMeditateTitle, npc=376, name="高階女祭司勞蕾娜", icon=19, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="在這裡完成第二個任務. 總是 /kneel!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "聖光的秘密 (1)" or "" ), 
							( ( ns.race == "Night Elf") and "聖光的秘密 (2)" or "" ) }, continent=true, },

	[23805890] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[24409350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[26049211] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 }, -- V
	[27808840] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[30806480] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36206580] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[37908330] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[38208200] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[40307750] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[40807760] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[41605280] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[41807800] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[41808150] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47608647] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 }, -- V
	[48008710] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48608790] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52505900] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[54306670] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55606700] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56706680] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[61004910] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[61304970] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[61704680] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[62204800] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[64805730] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[65004130] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[65005630] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[66104070] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[68404460] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[69903880] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[71107770] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[71108040] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[71507670] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[74005000] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[75508520] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[76508650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[77308520] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[78205750] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[79305710] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[79405450] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[79505710] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[79705530] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
}

points[ 1424 ] = { -- Hillsbrad Foothills
	[75203780] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[75304150] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[77303890] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3, continent=true },
	[79303945] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },

	[23206420] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[25457090] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4, continent=true },
	[27807280] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[29807360] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[62456310] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[64706160] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[66256045] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },

	[32407235] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[35706870] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[40706910] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[42453175] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5, continent=true },
	[44002810] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[44956735] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[45103010] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },

	[33003600] = { title=ns.twoMeditateTitle, name="希爾斯布萊德怪物 (各種)", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "羅亞的秘密 (1)" or "" ), 
							( ( ns.race == "Undead" ) and "羅亞的秘密 (2)" or "" ) } },
	[35204700] = { title=ns.twoMeditateTitle, name="希爾斯布萊德怪物 (各種)", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "羅亞的秘密 (1)" or "" ), 
							( ( ns.race == "Undead" ) and "羅亞的秘密 (2)" or "" ) } },

	[50844945] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="煉金術士可以購買精煉的藥劑\n後悔的合成配方",
					quest={ 78909 }, questName={ "移動鱗片護符" } },
	[51593922] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="煉金術士可以購買精煉的藥劑\n後悔的合成配方",
					quest={ 78909 }, questName={ "移動鱗片護符" } },
	[55702030] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="煉金術士可以購買精煉的藥劑\n後悔的合成配方",
					quest={ 78909 }, questName={ "移動鱗片護符" } },
	[55752740] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="煉金術士可以購買精煉的藥劑\n後悔的合成配方",
					quest={ 78909 }, questName={ "移動鱗片護符" }, continent=true },
	[57013427] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="煉金術士可以購買精煉的藥劑\n後悔的合成配方",
					quest={ 78909 }, questName={ "移動鱗片護符" } },
	[60712068] = { npc=3537, name="Zixil", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="煉金術士可以購買精煉的藥劑\n後悔的合成配方",
					quest={ 78909 }, questName={ "移動鱗片護符" } },
	[88557351] = { name="陰影生物 / 純淨之光碎片", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="通過烏鴉嶺莊園前往" },

	[87304960] = { name="舊的破車", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, continent=true,
						tip="第六步. 從這裡開始第六步,\n而不是從阿拉希高地那邊" },
}

points[ 1455 ] = { -- Ironforge
}

points[ 1432 ] = { -- Loch Modan
	[24803070] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[26004930] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[26504420] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[26905760] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[27908330] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[28308740] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31507550] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34402710] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34509000] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34609110] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34908250] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[35102680] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[35602480] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[35701650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[35909370] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36008460] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36302350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[37608650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[37701610] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[39801240] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48002090] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[49002970] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[54502600] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	
	[48103950] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[59201360] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[68006590] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[68301860] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[68806250] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[69302280] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[69806630] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[73306440] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[75502500] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[77001440] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[77701840] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[79501610] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },

	[49501280] = { name="雕刻的小雕像", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, tip="第五步", continent=true },
}

points[ 1433 ] = { -- Redridge Mountains
	[14506170] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[14906430] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[17106360] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[17201800] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[19802150] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[20501390] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[21103620] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[21701930] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[23402700] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[27302140] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[28008400] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[28052845] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[29608450] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[32308300] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[34102570] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[39003180] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[43807090] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[47407060] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[52304670] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[56005740] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[14506170] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },

	[29803040] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[30802180] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[42801680] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[71408350] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[71605830] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[79003350] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[79603280] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[79007300] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[81606060] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[83104450] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[83204560] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[86305250] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[86605300] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },

	[25801500] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[26400830] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[28001500] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[28801760] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[33700760] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[35450990] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[36450790] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[41501060] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[58005160] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[61204370] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[63004980] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[66305720] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[68405380] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[69205990] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[69455530] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[70055745] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[73505500] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[73908030] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[74905020] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[75603000] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[75754735] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3, continent=true },
	[76303750] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[77706700] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[79154045] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[79704470] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[80104870] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[80105460] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[81456050] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[83705800] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[85054640] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
}

points[ 1427 ] = { -- Searing Gorge
	[14703620] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[17803800] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[25902490] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[28602500] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[36005890] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[37504935] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[38003910] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[40154155] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[41702130] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44203390] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44206270] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44705190] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[45453860] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[46702500] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[48905520] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[62306245] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
}

points[ 1421 ] = { -- Silverpine Forest
	[36502930] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43502250] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43503170] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44107170] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44702050] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44902350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[45307500] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[45405420] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true  },
	[46007150] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[46305480] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47207380] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47705550] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48302450] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55801960] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56202760] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[59101810] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[59901750] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[60801630] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[64801210] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[66301300] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	
	[64504970] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[65004200] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[65202320] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[65802340] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[66804550] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[67502540] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[67802420] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[77603100] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[80202850] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },

	[38801840] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[38802340] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[44202520] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[44602550] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[45503180] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[49801340] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[50205680] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[50206520] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[54403580] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[55602460] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[60800700] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
}

points[ 1453 ] = { -- Stormwind City
	[20685007] = { title=ns.twoMeditateTitle, npc=11397, name="娜拉·米德羅斯", icon=19, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="從這裡開始", faction="Alliance", continent=true,
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },
	[38582606] = { title=ns.twoMeditateTitle, npc=376, name="高階女祭司勞蕾娜", icon=19, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="在這裡完成第二個任務. 總是 /kneel!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "聖光的秘密 (1)" or "" ), 
							( ( ns.race == "Night Elf") and "聖光的秘密 (2)" or "" ) } },
}

points[ 1434 ] = { -- Stranglethorn Vale
	[24401260] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[24402480] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[25002300] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[25452970] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[25702955] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[29901980] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[33501550] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[42851910] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[43800940] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[43901830] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[44451000] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5, continent=true },
	[44701100] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[45600980] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },

	[20401180] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[23300800] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[25400970] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[26200860] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[35502380] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[37003130] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[37603090] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[37702290] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[41803560] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6, continent=true },
	[46203180] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[47150545] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[47304000] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[48500710] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[48700600] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[49600790] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },

	[27208270] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[27306945] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[27806245] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[28106360] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[29408950] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[29608080] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[30008710] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[30108945] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[30708950] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[33408810] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[33608670] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[33708820] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[34605160] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[35205080] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[38008220] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[38608060] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[39205870] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[39805770] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[40508080] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[40608570] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[41504960] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[41604230] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[42104450] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[42404640] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[42454810] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[43404910] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44304500] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44704160] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[45804290] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[47704245] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[50453065] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[51502860] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[51802760] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[52702830] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[38603560] = { npc=731, name="邦加拉什國王", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[47602880] = { npc=728, name="巴加瑟拉", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
	[49002060] = { npc=728, name="巴加瑟拉", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
	[49802460] = { npc=728, name="巴加瑟拉", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },

	[27507740] = { title=ns.gnomereganTitle, npc=7853, name="滑板車", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "修理機器人 9000!", "搶救修理機器人", "腐蝕的核心",
						"四邊測量", "保修索賠" }, },

	[26807720] = { npc=222444, name="受傷的侏儒", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, tip="鹹味水手的中層",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "夢魘的混合物", "伊薩裡烏斯", "下潛",
						"返回月光林地", "一個幸運的轉機", "壞消息...",
						"遺失的護腕", "喚醒夢魘" }, },
	[40808560] = { npc=222451, name="小小魚人", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "夢魘的混合物", "伊薩裡烏斯", "下潛",
						"返回月光林地", "一個幸運的轉機", "壞消息...",
						"遺失的護腕", "喚醒夢魘" }, },
}

points[ 1435 ] = { -- Swamp of Sorrows
	[04903160] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[11603410] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[13857145] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[14005610] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[54902960] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[56902490] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[60102220] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[61302390] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[61902110] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[62552345] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6, continent=true },
	[64302245] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[65601845] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },

	[57006100] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[70209680] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[82809345] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[86458395] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[89007845] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[89702570] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[91202745] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[92006820] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[94405250] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[94805060] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[94904540] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[94906100] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[10506030] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[12302960] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[16606330] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[22806430] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[27004930] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[34402840] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[36405030] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[49603840] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[56606540] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[60402770] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[60904370] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[69607840] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[72501070] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[77308960] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[81303430] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[83406650] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[87202630] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[90906540] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[91405670] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },

	[13607150] = { npc=5353, name="Itharius", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "噩夢的融合", "Itharius", "正在下降",
						"返回月光林地", "一個幸運的轉折", "壞消息...",
						"遺失的護腕", "喚醒噩夢" }, },
}

points[ 1425 ] = { -- The Hinterlands
	[45453980] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[50255335] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[53103870] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[57454230] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[57456345] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[58407280] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[58456720] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[60806460] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[60806820] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[62106520] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[63457335] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[63808350] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[64306500] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[64907100] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[66454460] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[67458000] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[67607745] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[67706660] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[68107500] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[68207330] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[68707050] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[71104870] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[23455870] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[25456685] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[31606770] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[32105870] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[32207570] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[37207200] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[40106630] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[41205940] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[47456915] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[49206850] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
}

points[ 1420 ] = { -- Tirisfal Glades
	[25304870] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31704610] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34704100] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[38004970] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[49203360] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[49603570] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[49804280] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[51006750] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51802600] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55504210] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[57903290] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[58703070] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[58802700] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[72802580] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[77205980] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[78405590] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },

	[56204940] = { title=ns.twoMeditateTitle, npc=6491, name="靈魂醫者 (布瑞爾)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="來這裡進行第二個任務交接. /kneel",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) }, continent=true, },
}

points[ 1458 ] = { -- Undercity
	[47201960] = { title=ns.twoMeditateTitle, npc=211225, name="巴朱拉", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="從這裡開始第一個任務", continent=true,
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "羅亞的秘密 (1)" or "" ), 
							( ( ns.race == "Undead" ) and "羅亞的秘密 (2)" or "" ) } },
}

points[ 1422 ] = { -- Western Plaguelands
}

points[ 1436 ] = { -- Westfall
	[29104880] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[29204590] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[29304960] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[29704730] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[30904620] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31004410] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[33205650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36403190] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[38202860] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[38806980] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[41504100] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[42306880] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[42701220] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43000800] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43906830] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44102350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44507020] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44702550] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44900760] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[45002190] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[45502090] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[45507030] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[45901910] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[46103850] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[46805340] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48204710] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[48302030] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48506090] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51103900] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52503450] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53106250] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55600770] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56501340] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56501920] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[60605830] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[60905020] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	
	[34808570] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[36808280] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[53007890] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[56307450] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[56506990] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[60707440] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[63807030] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[65307510] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },

	[37505070] = { name="燒毀的遺骸", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" },
						tip="聯盟: 第一步\n部落: 第二步", continent=true },
						
	[28604400] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[28904750] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[29005850] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[29606940] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[29803440] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[31403940] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[31506540] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[31603920] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[32207600] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[32208020] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[32402920] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[34008220] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[34806140] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[35803260] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[37508530] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[41501530] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[44804640] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[46801240] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[46903950] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[47502170] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[47506750] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[47507930] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[47801380] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[51003240] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[51607150] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[53008020] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[57001050] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[62502630] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
}

points[ 1437 ] = { -- Wetlands
	[13454145] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[13603810] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[13903020] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[13903490] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[14103280] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[14702370] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[15303850] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[16103060] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[16203610] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[18303970] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[31253245] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3, continent=true },
	[31602980] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[35202760] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[37903020] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[38902720] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[42703230] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[43603480] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[45303200] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[45453475] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[46907620] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[47106600] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[47905890] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[48307420] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[48607845] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[48906020] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[49905970] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[51456095] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[51603080] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[52902730] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[55657540] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[61205830] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[61807230] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[63006980] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[63305910] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[63806300] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[63907820] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[64905590] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },

	[38604590] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[44004310] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[45604620] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[45754250] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[46401620] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[46604650] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[47501500] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[48201600] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[48501770] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[49204590] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[51204620] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[53705460] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[59802460] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[61802680] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[62502870] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4, continent=true },
	[67603140] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[68803200] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[68902900] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[71203040] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },

	[72009400] = { name="雕刻的小雕像", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, tip="第五步", continent=true },
}

--=======================================================================================================
--
-- KALIMDOR
--
--=======================================================================================================

points[ 1440 ] = { -- Ashenvale
	[07101230] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[10402260] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[11102690] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[11603180] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[14202040] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[18503160] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[22403630] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[31902320] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[31903120] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	
	[24106350] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[25006060] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[28706090] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[33406750] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[34203830] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[35453655] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[36003170] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[37903390] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[39703610] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[40153445] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[40303320] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[40453180] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3, continent=true },
	[42303490] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[42453345] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[46106990] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[48906970] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[50005970] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[50906970] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[50907545] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[54106110] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[54306420] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[56206320] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },

	[66255645] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[66455390] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[66905710] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[68804960] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4, continent=true },
	[74807440] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[75604645] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[76207470] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[77407290] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[78104510] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[78454635] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[78704520] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[79404960] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[80454975] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[81804945] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },

	[17202660] = { npc=212334, name="死去的暮光邪教徒", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					quest={ 78909 }, questName={ "移動鱗片護符" }, continent=true },
	[86006700] = { name=ns.L["AoPD"], title=ns.nightmareTitle, icon=21, guide=ns.nightmare,
					tip="這是大約位置，一旦\n"
						.."進入夢魘後，獲得減益效果", continent=true,
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "夢魘的混合物", "Itharius", "下潛",
						"返回月光林地", "一個幸運的轉機", "壞消息...",
						"遺失的護腕", "喚醒夢魘" }, },
	[89404060] = { npc=221477, name="戰地指揮官漢娜拉", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare,
					tip="她位於 \"常規\"\n灰谷，夢魘之外。\n\n"
						.."圖釘也被符文插件使用，所以一個\n可能大部分重疊另一個",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "夢魘的混合物", "Itharius", "下潛",
						"返回月光林地", "一個幸運的轉機", "壞消息...",
						"遺失的護腕", "喚醒夢魘" }, },

	[24406340] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[27606260] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[30203020] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[33502840] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[44506420] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[51204700] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[52506280] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[55504020] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[67004600] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[67205100] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[77407300] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[80507080] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[84807020] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },

	[31602300] = { title=ns.twoMeditateTitle, name="被遺忘者怪物 (各種)", icon=19, class="PRIEST", level=18,
					guide=ns.twoMeditate,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "聖光的秘密 (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "聖光的秘密 (2)" or "" ) } },
	[33406820] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },							
	[61007620] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },									
	[64206840] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },							
	[67208280] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },							
	[71405400] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },
	[76604520] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },
	[79007360] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },
	[79406200] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },
	[85406640] = { title=ns.twoMeditateTitle, name="陰影叢林怪物 (各種)", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從怪物身上收集陰影葉",
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },

	[80105000] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed, continent=true },
	[82106510] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[82905170] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[84506070] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[85805090] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[86106570] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[87304630] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[88504300] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[88904610] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[90104950] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[90805240] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[91005680] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[91404970] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
	[93205130] = { name="共鳴的夢魘之花", title="夢魘種子", icon=22, tip=ns.nightmareSeed },
}

points[ 1447 ] = { -- Azshara
	[15007310] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[17606890] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[20456245] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[25856145] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[26505600] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[29305300] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[32005145] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[32454530] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[34704060] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[35453590] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[35755245] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[36855950] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[38454785] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[41205000] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[43356440] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[16505100] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[17505870] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[21205400] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[24804780] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[25108150] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[30207980] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[33008150] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
}

points[ 1439 ] = { -- Darkshore
	[37604380] = { title=ns.twoMeditateTitle, npc=211298, name="Syrnoya", icon=19, class="PRIEST", level=17, continent=true,
					guide=ns.twoMeditate, tip="在這裡完成第二個任務. 總是 /kneel!", faction="Alliance",
					quest={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78194 or 0 ),
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and 78195 or 0 ) },
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "伊露恩的秘密 (2)" or "" ) } },

	[36702740] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[39607830] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[41605820] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[42003120] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[42506200] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43005870] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44703730] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[46003770] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47103700] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48103650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[50802560] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[54703690] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55503620] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56603510] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	
	[35408480] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[36308650] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[38402930] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[38408680] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[42608680] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[42808450] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[44202040] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[44308500] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[44708690] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[56402620] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[57102250] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[58102000] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[58401770] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[58500750] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[58801580] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[60301850] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[60502240] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[61501930] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[61902160] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },

	[40604080] = { npc=2175, name="暗影之爪", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },

	[35808280] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[37606380] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[40608980] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[43202700] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[44208200] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[45002620] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[45205800] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[46204680] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[47402880] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[49803680] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[56402480] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[59802180] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
}

points[ 1457 ] = { -- Darnassus
	[38608880] = { title=ns.twoMeditateTitle, npc=211188, name="瑪艾絲拉·熔心", icon=19, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="從這裡開始第一個任務", faction="Alliance", continent=true,
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race == "Night elf" ) and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "聖光的秘密 (1)" or "" ), 
							( ( ns.race == "Night Elf" ) and "聖光的秘密 (2)" or "" ) } },
}

points[ 1443 ] = { -- Desolace
	[52502850] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[54302820] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[54902620] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[55203010] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[71705030] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[73454165] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[74504720] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[74604900] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[74801945] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[75552645] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5, continent=true },
	[77101800] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[78802330] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },

	[29406060] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[29605800] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[30505470] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[32606110] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[32705510] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[32705960] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6, continent=true },
	[34205300] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[35206145] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[35709210] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[39109530] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[39809410] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[40609470] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[66008070] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[69507850] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[71457175] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[72007850] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[73807370] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },

	[47402220] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[48808220] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[49507460] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[52008550] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[52207250] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[52808100] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[54401920] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[54602880] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[56107460] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[71501860] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[72502190] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[73502460] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[74501030] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[76501920] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[80501710] = { name="惡魔之淚", title="惡魔傳送門", icon=18, tip=ns.felPortals },

	[32017272] = { title=ns.gnomereganTitle, object=424075, name="四邊測量信標 002", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "修理機器人 9000!", "搶救修理機器人", "腐蝕的核心",
						"四邊測量", "保修索賠" }, },
}

points[ 1411 ] = { -- Durotar
	[39405380] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[40803040] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[42102710] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[42502690] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43303940] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43603560] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43705070] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43903920] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[44102400] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44205030] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[46607900] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47104980] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47503100] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47604980] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47803330] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47807720] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[49104840] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[49702430] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[49708070] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[50702590] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51201900] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51202360] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51302100] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51401030] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51501030] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51901990] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52002540] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52400920] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52602640] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52700850] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53202500] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53802820] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[54102220] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[57805870] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[59605810] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[59605630] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[61804550] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[61805110] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[62105590] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[62404210] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[62406050] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[63205680] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[64105040] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[64505310] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[65508320] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[67108670] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[68308510] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[68407150] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },

	[68607160] = { npc=208124, name="拉魯克", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },

	[68707110] = { title=ns.twoMeditateTitle, object=410168, name="巫毒堆", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="忽略任務指示. 爬上\n最北邊島嶼上的山",
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "羅亞的秘密 (1)" or "" ), 
							( ( ns.race == "Undead" ) and "羅亞的秘密 (2)" or "" ) }, continent=true, },
}

points[ 1445 ] = { -- Dustwallow Marsh
	[30702245] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[30902060] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[31502160] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6, continent=true },
	[33702210] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[54101500] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[57301510] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[57651645] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[58001340] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[59100980] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[61701820] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[62900920] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[63101900] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[63200720] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[63202720] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },
	[64452685] = { title=ns.chest6, level=40, name="堅固的箱子", icon=6, tip=ns.chestContent6 },

	[36706880] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[37706760] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[37906960] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[38806460] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[42906560] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44106500] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[44906545] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[44906680] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[48457365] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[55606390] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[56006320] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[58804620] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[58906800] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[60006890] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[58601300] = { title=ns.gnomereganTitle, object=424074, name="四邊測量信標 001", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "修理機器人 9000!", "搶救修理機器人", "腐蝕的核心",
						"四邊測量", "保修索賠" }, },
}

points[ 1444 ] = { -- Feralas
	[68205880] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[70606250] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[72506380] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[73205440] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[74205060] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[74205680] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[74206000] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[76205650] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[76606360] = { name="惡魔之痕", title="惡魔傳送門", icon=18, tip=ns.felPortals },

	[29309380] = { title=ns.gnomereganTitle, object=424077, name="四邊測量信標 004", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="留在海岸上以避開 L60e。\n這個洞穴也是一個死胡同",
					questName={ "修理機器人 9000!", "搶救修理機器人", "腐蝕的核心",
						"四邊測量", "保修索賠" }, },
	[84204380] = { title=ns.gnomereganTitle, npc=218237, name="維爾達·奇械", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					tip="留在海岸上以避開 L60e。\n這個洞穴也是一個死胡同",
					questName={ "修理機器人 9000!", "搶救修理機器人", "腐蝕的核心",
						"四邊測量", "保修索賠" }, },
}

points[ 1450 ] = { -- Moonglade
	[52404050] = { npc=12042, name="洛加納爾", title=ns.nightmareTitle, icon=21,
					guide=ns.nightmare, continent=true,
					tip="確保你對塞納里奧議會友善",
					quest= { 82017, 82018, 82019, 82020, 82021, 82022, 82023, 81986 },
					questName = { "夢魘的混合物", "Itharius", "下潛",
						"返回月光林地", "一個幸運的轉機", "壞消息...",
						"遺失的護腕", "喚醒夢魘" }, },
}

points[ 1412 ] = { -- Mulgore					
	[28502120] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[29302350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[29602590] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[30902290] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31006080] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31206180] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31306340] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31504200] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[31704270] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[32506100] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[33104740] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[35506240] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36101120] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36601290] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[37701040] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[38400800] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[40101530] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[40601610] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48407230] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53200930] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53304810] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53307310] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53707320] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53804850] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[55101610] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55201150] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56701480] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[59804810] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[60903790] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[61204730] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[62303830] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[63107150] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[63504110] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[64206890] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[65506920] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[65604090] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[66906860] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },

	[36605660] = { npc=205382, name="莫克瓦", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[51801840] = { npc=5807, name="耙子", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1454 ] = { -- Orgrimmar
	[35748823] = { title=ns.twoMeditateTitle, npc=211229, name="迪特里希·普雷斯", icon=19, class="PRIEST", faction="Horde",
					level=18, guide=ns.twoMeditate, tip="從這裡開始第一個任務", continent=true,
					quest={ ( ( ns.race == "Troll" ) and 78196 or 0 ), ( ( ns.race == "Troll" ) and 78197 or 0 ) }, 
					questName={ ( ( ns.race == "Troll" ) and "不死族的秘密 (1)" or "" ), 
							( ( ns.race == "Troll" ) and "不死族的秘密 (2)" or "" ) } },							
}

points[ 1442 ] = { -- Stonetalon Mountains
	[43303880] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[45104600] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[50904380] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[53603580] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[63504020] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[66304550] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[66505080] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[71906270] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[72206040] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[72906140] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[73006000] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[73006150] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[73006280] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[73305900] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[73608560] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[74105930] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[77009150] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[80608950] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[84308420] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },

	[27206950] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[28406420] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[29207030] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[31705890] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[32606590] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3, continent=true },
	[34456200] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[35006890] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[37006890] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },

	[39604990] = { name="土堆", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, tip="第四步" },
	[40805250] = { name="口袋垃圾", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, tip="第三步", continent=true },
}

points[ 1446 ] = { -- Tanaris
	[38705680] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[39905430] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[41205700] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[41505450] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[42205320] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[70904330] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[71104570] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[72304410] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[72604570] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[72904530] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7, continent=true },
	[73004790] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[73804820] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[75304610] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[37602420] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[40002870] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[42202260] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[58703945] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[60603270] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[60703910] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[62703060] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[63303345] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[63802900] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[64004020] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[65003990] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[65453280] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },
	[65453645] = { title=ns.chest7, level=45, name="堅固的箱子", icon=7, tip=ns.chestContent7 },

	[37802730] = { title=ns.gnomereganTitle, object=424076, name="四邊測量信標 003", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "修理機器人 9000!", "搶救修理機器人", "腐蝕的核心",
						"四邊測量", "保修索賠" }, },
}

points[ 1438 ] = { -- Teldrassil
	[31503170] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[33202850] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[33903560] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34202820] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[34203440] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[35403480] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[35603880] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[36303790] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[37204300] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[37504160] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43806130] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43905990] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43906190] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44506040] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44606260] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[44805890] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47207780] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47907790] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[50006300] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[51605000] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[51904860] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52005130] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53005020] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56307550] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[65806480] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[66006350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[68705190] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[69605320] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },

	[53807680] = { npc=14430, name="暮色潛行者", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[60207560] = { npc=14430, name="暮色潛行者", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1413 ] = { -- The Barrens
	[42102470] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43402370] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43602650] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[43702120] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[45102000] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[46603900] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1, continent=true },
	[46502280] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[46601810] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47001590] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47701950] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[47901790] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[48903880] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52501070] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52501160] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[52904440] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53404050] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[53904300] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[54504680] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55902700] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[55904580] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56600880] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56804350] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[56902550] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[57104120] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[58802750] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[59102440] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[62804970] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[63504610] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[63704920] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	[64304730] = { title=ns.chest1, level=10, name="破損的箱子", icon=1, tip=ns.chestContent1 },
	
	[37601630] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[38401310] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[39201190] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[40001600] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[42905510] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[43304830] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[43305220] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[45005140] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[45305430] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[46905360] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[51105750] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[51305490] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[52605230] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2, continent=true },
	[53605400] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[59605400] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[59600280] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[60400350] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[61700520] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },
	[62000420] = { title=ns.chest2, level=25, name="破損的箱子", icon=2, tip=ns.chestContent2 },

	[41607870] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[42008170] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3, continent=true },
	[43108320] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },
	[44308290] = { title=ns.chest3, level=25, name="堅固的箱子", icon=3, tip=ns.chestContent3 },

	[62043955] = { npc=214208, name="諾拉·安妮心", title=ns.voidTouchedTitle, icon=15, guide=ns.voidTouched,
					tip="在你完成之前的步驟之前不要來找她。\n\n"
						.."移動鱗片護符是一個非常\n有價值的 +5 精神飾品",
					quest={ 78909 }, questName={ "移動鱗片護符" }, continent=true },

	[50001660] = { npc=5865, name="迪舒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[51802800] = { npc=5865, name="迪舒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
	[62603440] = { npc=5828, name="胡瑪獅王", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },

	[46407390] = { name="燒毀的遺骸", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" },
						tip="聯盟: 第二步\n部落: 第一步", continent=true },

	[42808180] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[43208020] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[43808380] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[46108550] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[47808360] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[48408120] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[48408300] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[48608300] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[50208060] = { name="惡魔裂縫", title="惡魔傳送門", icon=18, tip=ns.felPortals },

	[38601540] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[39501380] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals, continent=true },
	[40001840] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[40801440] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[42001420] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[43404420] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[44405000] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[44405460] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[45004580] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[45805120] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[46405260] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[47604940] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[51805340] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[53005080] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[54205260] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[54404850] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[55602560] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[55805100] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[56002480] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[57602350] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[58204980] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[58802560] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[59002920] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[59003200] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[59203650] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[59802750] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[60203600] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[60802900] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
	[61803200] = { name="惡魔碎片", title="惡魔傳送門", icon=18, tip=ns.felPortals },
}

points[ 1441 ] = { -- Thousand Needles
	[09803420] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[11503680] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[13903890] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[17604170] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[17802120] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[18502100] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[18902320] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[19402170] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[25805545] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[26605400] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[27105520] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[27205245] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[42203160] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[42203745] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[42303370] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[42903930] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[43103680] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4, continent=true },
	[43503320] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[43603770] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },
	[44903230] = { title=ns.chest4, level=30, name="堅固的箱子", icon=4, tip=ns.chestContent4 },

	[65308690] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[68458290] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
	[69708570] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5, continent=true },
	[71208510] = { title=ns.chest5, level=35, name="堅固的箱子", icon=5, tip=ns.chestContent5 },
}

points[ 1456 ] = { -- Thunder Bluff
}

points[ 1452 ] = { -- Winterspring
	[52405480] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[52805420] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[52805620] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[53205680] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[53605380] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[53605600] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift, continent=true },
	[54205000] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[54605520] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[55604920] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
	[56505060] = { name="擴大的惡魔裂隙", title="惡魔傳送門", icon=18, tip=ns.felRift },
}

--=======================================================================================================
--
-- MISCELLANY
--
--=======================================================================================================

-- Choice of texture
-- Note that these textures are all repurposed and as such have non-uniform sizing
-- I should also allow for non-uniform origin placement as well as adjust the x,y offsets
ns.textures[1] = "Interface\\PlayerFrame\\MonkLightPower"
ns.textures[2] = "Interface\\PlayerFrame\\MonkDarkPower"
ns.textures[3] = "Interface\\Common\\Indicator-Red"
ns.textures[4] = "Interface\\Common\\Indicator-Yellow"
ns.textures[5] = "Interface\\Common\\Indicator-Green"
ns.textures[6] = "Interface\\Common\\Indicator-Gray"
ns.textures[7] = "Interface\\Common\\Friendship-ManaOrb"	
ns.textures[8] = "Interface\\TargetingFrame\\UI-PhasingIcon"
ns.textures[9] = "Interface\\Store\\Category-icon-pets"
ns.textures[10] = "Interface\\Store\\Category-icon-featured"
ns.textures[11] = "Interface\\HelpFrame\\HelpIcon-CharacterStuck"	
ns.textures[12] = "Interface\\PlayerFrame\\UI-PlayerFrame-DeathKnight-Frost"
ns.textures[13] = "Interface\\TargetingFrame\\PetBadge-Magical"
ns.textures[14] = "Interface\\Vehicles\\UI-Vehicles-Raid-Icon"
ns.textures[15] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Adrenaline"
ns.textures[16] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Arcane"
ns.textures[17] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Demonic"
ns.textures[18] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Duty"
ns.textures[19] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Frozen"
ns.textures[20] = "Interface\\AddOns\\HandyNotes_Chests\\Textures\\Metamorphosis"

ns.scaling[1] = 0.41
ns.scaling[2] = 0.41
ns.scaling[3] = 0.41
ns.scaling[4] = 0.41
ns.scaling[5] = 0.41
ns.scaling[6] = 0.41
ns.scaling[7] = 0.49
ns.scaling[8] = 0.46
ns.scaling[9] = 0.56
ns.scaling[10] = 0.56
ns.scaling[11] = 0.43
ns.scaling[12] = 0.37
ns.scaling[13] = 0.36
ns.scaling[14] = 0.32
ns.scaling[15] = 0.33
ns.scaling[16] = 0.33
ns.scaling[17] = 0.33
ns.scaling[18] = 0.33
ns.scaling[19] = 0.33
ns.scaling[20] = 0.33
