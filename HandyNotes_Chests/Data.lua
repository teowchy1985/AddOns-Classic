local _, ns = ...
local points = ns.points

ns.bestPet = "對於獵人來說，可以說最好的寵物是貓。\n\n這裡有一些稀有/精英寵物可以馴服：\n\n"
			.."莫克瓦     - 位於莫高雷，血蹄村西邊，等級 7\n拉魯克     - 位於杜洛塔，回音群島，等級 7\n"
			.."夜行者     - 位於泰達希爾，等級 9\n剃刀     - 位於雷霆崖東邊，等級 10。 30+ 分鐘重生\n"
			.."迪舒     - 位於北貧瘠之地，等級 13\n影爪     - 位於黑海岸，奧伯丁北邊，等級 13\n"
			.."胡瑪     - 位於貧瘠之地，棘齒城，等級 23。 8+ 小時重生\n"
			.."阿拉加     - 位於奧特蘭克，等級 35。 2-3 天重生\n斷牙     - 位於荒蕪之地，等級 37\n"
			.."巴加瑟拉     - 位於荊棘谷，等級 40 精英\n邦加拉什國王     - 位於荊棘谷，等級 43 精英\n\n"
			.."對於那些喜歡風蛇的人... 當然是哈卡之子\n你可以在祖爾格拉布找到他。 等級 60 精英和\n"
			.."當然還有石爪山脈的幼年翼手龍（僅限），作為獲得擊殺指令的共同獎勵"
ns.chest1 = "* 等級 10 破損的補給品（友善）\n* 4 x 等級 10 法師捲軸\n* 專業配方\n* 綠裝、白裝、灰裝"
ns.chest2 = "* 等級 25 破損的補給品（尊敬）\n* 4 x 等級 20 法師捲軸\n* 專業配方\n* 綠裝、灰裝\n* 8 格包包"
ns.chest3 = "* 等級 25 破損的補給品（尊敬）\n* 4 x 等級 20 法師捲軸\n* 專業配方\n* 灰裝、綠裝、藍裝\n* 10 格包包"
ns.chest4 = "* 等級 30 破損的補給品（崇敬）\n* 5 x 等級 40 法師捲軸\n* 專業配方\n* 灰裝、綠裝、藍裝\n* 10 格包包"
ns.chest5 = "* 等級 35 破損的補給品（崇敬）\n* 5 x 等級 40 法師捲軸\n* 專業配方\n* 灰裝、綠裝、藍裝\n* 12 格包包"
ns.chest6 = "* 等級 40 破損的補給品（崇敬）\n* 5 x 等級 40 法師捲軸\n* 專業配方\n* 灰裝、綠裝、藍裝\n* 12 格包包"
ns.chest7 = "* 等級 45 破損的補給品（崇拜）\n* 5 x 等級 40 法師捲軸\n* 專業配方\n* 灰裝、綠裝、藍裝\n* 14 格包包"
ns.cozySleepingBag = "第一步: " ..( ( ns.faction == "Alliance" ) and "前往西fall的Alexston農場" or
			"前往陶拉祖南邊，貧瘠之地，被燒毀的塔" ) .."\n在廢墟中尋找燒毀的遺骸。\n\n"
			.."第二步: " ..( ( ns.faction == "Alliance" ) and "前往陶拉祖南邊，貧瘠之地，被燒毀的塔。" or
			"前往西fall的Alexston農場" )
			.."\n在廢墟中尋找燒毀的遺骸。\n從附近釘著的木板上領取下一個任務。\n\n"
			.."第三步: 前往石爪山脈，尋找一個\n廢棄的營地。它位於東北邊的一條小路上 "
			.."來自太陽石休憩地。\n那裡有一個盒子上的口袋垃圾。\n\n"
			.."第四步: 向北走，直接上山，尋找土堆。\n"
			.."點擊完成 \"搶奪\"。 接受 \"濕活\"。\n\n"
			.."第五步: 洛克莫丹，位於連接濕地的水壩的邊緣。\n點擊老鷹雕像完成 "
			.."並開始任務。\n\n"
			.."第六步: 爬上索拉丁之牆，連接希爾斯布萊德和阿拉希高地。\n從希爾斯布萊德一側通過一個損壞的車子爬上去。\n 繼續攀爬，你會發現一個大廳和一個袋子。\n\n"
			.."注意：這個任務鏈獎勵你 8 件學生口糧。\n目前是獲得這種休息經驗加成的唯一方法！"
ns.felPortals = "由術士探險小鬼使用，\n法師用於他們的邪火衝擊符文等"
ns.felRift = "不會獎勵法師邪火衝擊法術筆記，\n也不會獎勵術士結界守護者符文。\n"
			.."邪布和惡魔/黑暗符文的來源"
ns.gnomeregan = "(1) 從任何諾姆廢物或黑暗大使中拾取污垢覆蓋的 salvage。\n\n"
			.."(2) 在宿舍，將它和 30 秒插入\nSalvagematic 9000。你需要達到 L40。\n\n"
			.."附近的 Ziri 提供幫助進行維修，您\n提供 10 個秘銀錠 (AH)，5 個高等\n"
			.."神秘精華 (AH)，3 個 GG12-082 筒式保險絲\n（諾姆機械垃圾），和一個原始的 G-7\n"
			.."C.O.R.E. 處理器，如下所述：\n\n(3) 在諾姆入口殺死 Techbot (L40e)\n"
			.."用於腐蝕的處理器。 你現在在第三個\n任務中。 與 Ziri 交談。\n\n"
			.."(4) 前往藏寶海灣的 Scooty。 第 4 個任務有\n你從淒涼之地、塵泥沼澤收集信標\n"
			.."菲拉斯和塔納利斯。\n\n(5) 回到 BB，Scooty 讓你傳送到\n"
			.."菲拉斯的 Wirdal Wondergear。 注意：他的\n自動化會讓你從他的基地掉下來，如果你\n"
			.."對它們打噴嚏。 無論如何，爐石\n設置到海灣是一個勝利。\n\n"
			.."(6) 從納迦怪物中獲得耗盡的虛空核心，並且\n來自暗影生物的黑暗微粒\n"
			.."從任何獎勵你 XP 的怪物隨機生成。\n\n(7) 返回諾姆的 Ziri 以獲得您的獎勵"
ns.gnomereganTitle = "諾姆瑞根裝備指南"
ns.nightmare = "(1) 在 L50 時，進入艾薩拉翡翠夢境入口。 向南走到後面的\n"
			.."戰歌伐木場。 繼續前進，直到你收到一個 \"麻痺恐懼光環減益效果\"。\n"
			.."退出夢境並與菲爾德船長哈納拉交談以獲得第一個任務。\n\n"
			.."(2) 與月光林地的 Loganaar 交談。 他會直接將你送到南方的 Itharius-\n"
			.."悲傷沼澤的西角。\n\n"
			.."(3) 在阿塔哈卡神廟/沉沒的神廟中，你必須盡可能地前進到巢穴\n"
			.."被選中的。 現在將滿足 \"Going Under\"。 稍後返回 Itharius。\n\n"
			.."(4) 你現在被送回月光林地的 Loganaar。 交出並等待陰影\n"
			.."人物生成。 與她交談並拾取下一個任務和下一個任務。\n\n"
			.."(5) 下一個停靠港是荊棘谷的藏寶海灣。 一個受傷的侏儒會送\n"
			.."你到 Jaguero 島上的 Itty Bitty Murloc。 他旁邊是一個小洞穴。 檢索\n"
			.."護腕並前往月光林地。\n\n"
			.."(6) 陰影人物為您提供了一個新任務。 返回灰谷，裝備\n"
			.."在進入夢境之前先戴上護腕。 請注意，她已經更改了它們！ 去你的\n"
			.."以前的 \"減益效果\" 位置。 噩夢混合體拍打該區域。 殺了它，但是\n"
			.."你需要一個 5 人的團隊。 強大的打擊。 它會掉落紫色的噩夢斗篷！！！\n\n"
			.."(7) 回到陰影人物。 她現在是你的第 3 階段裝備的首選！"   
ns.nightmareTitle = "噩夢裝備指南"
ns.twoMeditate = "在 17 級時，前往暴風城的公園（人類 /\n矮人）、達納蘇斯月亮神殿（夜精靈）、\n"
			.."幽暗城戰爭區（所有部落）來自牧師訓練師的種族\n任務。\n\n"
			.."最終，你將能夠跨種族（和陣營）分享多個冥想\n增益效果。 錯誤？）。\n\n"
			.."玩家 1：/跪； 玩家 2：/祈禱"
ns.twoMeditateTitle = "牧師兩次冥想"
ns.voidTouchedTitle = "虛空接觸裝備指南"
ns.voidTouched = "(1) 達到 25 級並在其中一項中達到 100 級\n鍛造、製皮或裁縫。\n\n"
			.."(2) 從 AH 購買聚合後悔藥劑。\n煉金術士可以從 Zixil 購買此配方，在小徑上\n"
			.."塔倫米爾和南海鎮之間； Kzixx 在從\n紅木/艾爾文森林到黑石鎮的路徑上。\n\n"
			.."(3) 在灰谷的 Zoram 海灘找到死去的暮光邪教徒。\n喝下長生不老藥並與他交談。\n\n"
			.."(4) 在黑暗深淵中，擊敗第二個首領，加摩拉。\n與老瑟拉基斯的屍體互動。\n\n"
			.."(5) 在棘齒城接受來自 N'ora Anyheart 的任務。 奇怪的\n灰塵 x 40、高等魔法精華 x 5、小閃光碎片 x 2、\n"
			.."一把移動鱗片，5 金幣。 鱗片從舊的掉落\n瑟拉基斯。 其他的東西都來自 AH。\n\n"
			.."(6) 帶著她的護身符獎勵，返回 BFD 並前往凱爾里斯的地下\n海綿。 搶劫工匠的寶箱。 \"盒子\"\n"
			.."神奇地出現在你的包裡。\n\n(7) 前往奧特蘭克山脈。 使用柱子摧毀盒子。\n\n"
			.."(8) 一個陰影人物產生。 互動。 你必須選擇\n\"好的，讓我看看\" 選項。\n\n"
			.."(9) 恭喜。 您現在擁有每個第 1 階段的食譜。 可能 BiS！\n\n"
			.."(從 (6) 重複以獲得另一個碎片)"


-- Icons:	1 - 7 	Chests
--			15		Void-Touched
--			16		Best Pets
--			17		Cozy Sleeping Bag
--			18		惡魔傳送門s
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
	[31007260] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
	[31408480] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[38808980] = { npc=14222, name="阿拉加", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1417 ] = { -- Arathi Highlands
	[22502420] = { name="匆忙捲起的釘板", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, continent=true,
						tip="第六步. 查看希爾斯布萊德地圖\n以了解從哪裡開始這一步" },
}

points[ 1418 ] = { -- Badlands
	[45203520] = { npc=2850, name="斷齒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
	[54801480] = { npc=2850, name="斷齒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[63003020] = { npc=2850, name="斷齒", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1419 ] = { -- Blasted Lands
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
	[21705200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[23105200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[23305420] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[23505240] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26005120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26104120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26803640] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34005110] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36104010] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38704330] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[39204650] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40104810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41004890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41504440] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42003590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42804710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43504920] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[66905960] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[67506070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68905940] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71005900] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71205050] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71605180] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[72104990] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[73005350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[74606170] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[74805650] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[76005810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[77906190] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79305870] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79705470] = { title="破損的箱子", icon=1, tip=ns.chest1 },
}

points[ 1431 ] = { -- Duskwood
	[13202730] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[14704440] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[21457345] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[22007200] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[24107200] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[24452725] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[31453245] = { title="堅固的箱子", icon=3, tip=ns.chest3, continent=true },
	[31603960] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[32602820] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[32804790] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[34755455] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[35952740] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[51806220] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[52505930] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[52605780] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[59202525] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[61802540] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[81805870] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[81805980] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[82206135] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	
	[12803370] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[16452885] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[17603620] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[26003640] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[33206945] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[33407620] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[34407590] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[35008130] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[35508030] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[36558355] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[36808045] = { title="堅固的箱子", icon=4, tip=ns.chest4, continent=true },
	[37207790] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[38108010] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[40307545] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[49357735] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[50607710] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[57703080] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[60304090] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[60704145] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[60907545] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[64107290] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[64405170] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[65706745] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[65906930] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[66107640] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[71307245] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[71607180] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[73207220] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[76903540] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[77303645] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[78703245] = { title="堅固的箱子", icon=4, tip=ns.chest4 },

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
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "艾露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "艾露恩的秘密 (2)" or "" ) } },
	[19392475] = { title=ns.twoMeditateTitle, npc=376, name="高階女祭司勞蕾娜", icon=19, class="PRIEST", level=17, 
					guide=ns.twoMeditate, tip="在這裡完成第二個任務. 總是 /kneel!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "聖光的秘密 (1)" or "" ), 
							( ( ns.race == "Night Elf") and "聖光的秘密 (2)" or "" ) }, continent=true, },

	[23805890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[24409350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[26049211] = { title="破損的箱子", icon=1, tip=ns.chest1 }, -- V
	[27808840] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[30806480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36206580] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37908330] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38208200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40307750] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40807760] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41605280] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41807800] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[41808150] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47608647] = { title="破損的箱子", icon=1, tip=ns.chest1 }, -- V
	[48008710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[48608790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52505900] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[54306670] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[55606700] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[56706680] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61004910] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61304970] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61704680] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62204800] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64805730] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65004130] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65005630] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[66104070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68404460] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[69903880] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71107770] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71108040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[71507670] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[74005000] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[75508520] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[76508650] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[77308520] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[78205750] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79305710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79405450] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79505710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[79705530] = { title="破損的箱子", icon=1, tip=ns.chest1 },
}

points[ 1424 ] = { -- Hillsbrad Foothills
	[75203780] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[75304150] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[77303890] = { title="堅固的箱子", icon=3, tip=ns.chest3, continent=true },
	[79303945] = { title="堅固的箱子", icon=3, tip=ns.chest3 },

	[23206420] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[25457090] = { title="堅固的箱子", icon=4, tip=ns.chest4, continent=true },
	[27807280] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[29807360] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[62456310] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[64706160] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[66256045] = { title="堅固的箱子", icon=4, tip=ns.chest4 },

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
	[24803070] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[26004930] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[26504420] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[26905760] = { title="破損的箱子", icon=2, tip=ns.chest1, continent=true },
	[27908330] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[28308740] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[31507550] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[34402710] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[34509000] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[34609110] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[34908250] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[35102680] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[35602480] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[35701650] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[35909370] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[36008460] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[36302350] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[37608650] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[37701610] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[39801240] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[48002090] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[49002970] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[54502600] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[48103950] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[59201360] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[68006590] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[68301860] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[68806250] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[69302280] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[69806630] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[73306440] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[75502500] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[77001440] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[77701840] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[79501610] = { title="破損的箱子", icon=2, tip=ns.chest2 },

	[49501280] = { name="雕刻的小雕像", title="舒適的睡袋", icon=17, guide=ns.cozySleepingBag,				
					quest={ ( ( ns.faction == "Alliance" ) and 79008 or 79007 ), 79192, 79980, 79974, 79975, 79976 }, 
					questName={ "...以及你找到的筆記", "墊腳石", "爭奪", "濕活", "老鷹之拳",
						"這一定是那個地方" }, tip="第五步", continent=true },
}

points[ 1433 ] = { -- Redridge Mountains
	[14506170] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[14906430] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[17106360] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[17201800] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[19802150] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[20501390] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[21103620] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[21701930] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[23402700] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[27302140] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[28008400] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[28052845] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[29608450] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[32308300] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[34102570] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[39003180] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43807090] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[47407060] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[52304670] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[56005740] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[14506170] = { title="破損的箱子", icon=2, tip=ns.chest2 },

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

	[25801500] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[26400830] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[28001500] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[28801760] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[33700760] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[35450990] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[36450790] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[41501060] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[58005160] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[61204370] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[63004980] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[66305720] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[68405380] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[69205990] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[69455530] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[70055745] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[73505500] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[73908030] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[74905020] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[75603000] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[75754735] = { title="堅固的箱子", icon=3, tip=ns.chest3, continent=true },
	[76303750] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[77706700] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[79154045] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[79704470] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[80104870] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[80105460] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[81456050] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[83705800] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[85054640] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
}

points[ 1421 ] = { -- Silverpine Forest
	[36502930] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43502250] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43503170] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44107170] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44702050] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44902350] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[45307500] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[45405420] = { title="破損的箱子", icon=2, tip=ns.chest1, continent=true  },
	[46007150] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[46305480] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[47207380] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[47705550] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[48302450] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[55801960] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[56202760] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[59101810] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[59901750] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[60801630] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[64801210] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[66301300] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[64504970] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[65004200] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[65202320] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[65802340] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[66804550] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[67502540] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[67802420] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[77603100] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[80202850] = { title="破損的箱子", icon=2, tip=ns.chest2 },

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
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "艾露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "艾露恩的秘密 (2)" or "" ) } },
	[38582606] = { title=ns.twoMeditateTitle, npc=376, name="高階女祭司勞蕾娜", icon=19, class="PRIEST", level=17,
					guide=ns.twoMeditate, tip="在這裡完成第二個任務. 總是 /kneel!", faction="Alliance",
					quest={ ( ( ns.race == "Night elf" ) and 78192 or 0 ), ( ( ns.race=="Night elf") and 78193 or 0 ) }, 
					questName={ ( ( ns.race == "Night elf" ) and "聖光的秘密 (1)" or "" ), 
							( ( ns.race == "Night Elf") and "聖光的秘密 (2)" or "" ) } },
}

points[ 1434 ] = { -- Stranglethorn Vale
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
					questName = { "An Amalgamation of Nightmares", "Itharius", "Going Under",
						"Return to Moonglade", "A Fortuitous Turn of Events", "The Bad News...",
						"The Lost Vambraces", "Waking the Nightmare" }, },
}

points[ 1420 ] = { -- Tirisfal Glades
	[25304870] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31704610] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34704100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38004970] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49203360] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49603570] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49804280] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[51006750] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51802600] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[55504210] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[57903290] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[58703070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[58802700] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[72802580] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[77205980] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[78405590] = { title="破損的箱子", icon=1, tip=ns.chest1 },

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
	[29104880] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[29204590] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[29304960] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[29704730] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[30904620] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[31004410] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[33205650] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[36403190] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[38202860] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[38806980] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[41504100] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[42306880] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[42701220] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43000800] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43906830] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44102350] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44507020] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44702550] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44900760] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[45002190] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[45502090] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[45507030] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[45901910] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[46103850] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[46805340] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[48204710] = { title="破損的箱子", icon=2, tip=ns.chest1, continent=true },
	[48302030] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[48506090] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[51103900] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[52503450] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[53106250] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[55600770] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[56501340] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[56501920] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[60605830] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[60905020] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[34808570] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[36808280] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[53007890] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56307450] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56506990] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[60707440] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[63807030] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[65307510] = { title="破損的箱子", icon=2, tip=ns.chest2 },

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
	[13454145] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[13603810] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[13903020] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[13903490] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[14103280] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[14702370] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[15303850] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[16103060] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[16203610] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[18303970] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[31253245] = { title="堅固的箱子", icon=3, tip=ns.chest3, continent=true },
	[31602980] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[35202760] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[37903020] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[38902720] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[42703230] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[43603480] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[45303200] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[45453475] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[46907620] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[47106600] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[47905890] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[48307420] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[48607845] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[48906020] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[49905970] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[51456095] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[51603080] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[52902730] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[55657540] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[61205830] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[61807230] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[63006980] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[63305910] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[63806300] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[63907820] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[64905590] = { title="堅固的箱子", icon=3, tip=ns.chest3 },

	[38604590] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[44004310] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[45604620] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[45754250] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[46401620] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[46604650] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[47501500] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[48201600] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[48501770] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[49204590] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[51204620] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[53705460] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[59802460] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[61802680] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[62502870] = { title="堅固的箱子", icon=4, tip=ns.chest4, continent=true },
	[67603140] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[68803200] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[68902900] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[71203040] = { title="堅固的箱子", icon=4, tip=ns.chest4 },

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
	[07101230] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[10402260] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[11102690] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[11603180] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[14202040] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[18503160] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[22403630] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[31902320] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[31903120] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	
	[24106350] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[25006060] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[28706090] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[33406750] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[34203830] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[35453655] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[36003170] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[37903390] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[39703610] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[40153445] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[40303320] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[40453180] = { title="堅固的箱子", icon=3, tip=ns.chest3, continent=true },
	[42303490] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[42453345] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[46106990] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[48906970] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[50005970] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[50906970] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[50907545] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[54106110] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[54306420] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[56206320] = { title="堅固的箱子", icon=3, tip=ns.chest3 },

	[66255645] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[66455390] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[66905710] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[68804960] = { title="堅固的箱子", icon=4, tip=ns.chest4, continent=true },
	[74807440] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[75604645] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[76207470] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[77407290] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[78104510] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[78454635] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[78704520] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[79404960] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[80454975] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[81804945] = { title="堅固的箱子", icon=4, tip=ns.chest4 },

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
					questName={ ( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "艾露恩的秘密 (1)" or "" ), 
							( ( ( ns.race == "Dwarf" ) or ( ns.race == "Human" ) ) and "艾露恩的秘密 (2)" or "" ) } },

	[36702740] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[39607830] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[41605820] = { title="破損的箱子", icon=2, tip=ns.chest1, continent=true },
	[42003120] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[42506200] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43005870] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[44703730] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[46003770] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[47103700] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[48103650] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[50802560] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[54703690] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[55503620] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[56603510] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[35408480] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[36308650] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[38402930] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[38408680] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[42608680] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[42808450] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44202040] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44308500] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[44708690] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[56402620] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[57102250] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[58102000] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[58401770] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[58500750] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[58801580] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[60301850] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[60502240] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[61501930] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[61902160] = { title="破損的箱子", icon=2, tip=ns.chest2 },

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
	[39405380] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40803040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42102710] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[42502690] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43303940] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43603560] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43705070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43903920] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[44102400] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44205030] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[46607900] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47104980] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47503100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47604980] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47803330] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47807720] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49104840] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49702430] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[49708070] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[50702590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51201900] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51202360] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51302100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51401030] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51501030] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51901990] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52002540] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52400920] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52602640] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52700850] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53202500] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53802820] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[54102220] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[57805870] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[59605810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[59605630] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61804550] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61805110] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62105590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62404210] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62406050] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[63205680] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64105040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64505310] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65508320] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[67108670] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68308510] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68407150] = { title="破損的箱子", icon=1, tip=ns.chest1 },

	[68607160] = { npc=208124, name="拉魯克", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },

	[68707110] = { title=ns.twoMeditateTitle, object=410168, name="巫毒堆", icon=19, class="PRIEST", level=18,
					faction="Horde", guide=ns.twoMeditate, tip="忽略任務指示. 爬上\n最北邊島嶼上的山",
					quest={ ( ( ns.race == "Undead" ) and 78198 or 0 ), ( ( ns.race == "Undead" ) and 78199 or 0 ) }, 
					questName={ ( ( ns.race == "Undead" ) and "羅亞的秘密 (1)" or "" ), 
							( ( ns.race == "Undead" ) and "羅亞的秘密 (2)" or "" ) }, continent=true, },
}

points[ 1445 ] = { -- Dustwallow Marsh
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
	[28502120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[29302350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[29602590] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[30902290] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31006080] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31206180] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31306340] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31504200] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[31704270] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[32506100] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[33104740] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[35506240] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36101120] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36601290] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37701040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[38400800] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40101530] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[40601610] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[48407230] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53200930] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53304810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53307310] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53707320] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53804850] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[55101610] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[55201150] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[56701480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[59804810] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[60903790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[61204730] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[62303830] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[63107150] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[63504110] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[64206890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65506920] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65604090] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[66906860] = { title="破損的箱子", icon=1, tip=ns.chest1 },

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
	[43303880] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45104600] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[50904380] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[53603580] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[63504020] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[66304550] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[66505080] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[71906270] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[72206040] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[72906140] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[73006000] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[73006150] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[73006280] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[73305900] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[73608560] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[74105930] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[77009150] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[80608950] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[84308420] = { title="破損的箱子", icon=2, tip=ns.chest2 },

	[27206950] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[28406420] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[29207030] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[31705890] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[32606590] = { title="堅固的箱子", icon=3, tip=ns.chest3, continent=true },
	[34456200] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[35006890] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[37006890] = { title="堅固的箱子", icon=3, tip=ns.chest3 },

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
	[37802730] = { title=ns.gnomereganTitle, object=424076, name="四邊測量信標 003", icon=20, guide=ns.gnomeregan,
					quest={ 79626, 79705, 79981, 79984, 79982 }, continent=true,
					questName={ "修理機器人 9000!", "搶救修理機器人", "腐蝕的核心",
						"四邊測量", "保修索賠" }, },
}

points[ 1438 ] = { -- Teldrassil
	[31503170] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[33202850] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[33903560] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34202820] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[34203440] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[35403480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[35603880] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[36303790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37204300] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[37504160] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43806130] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43905990] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[43906190] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44506040] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44606260] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[44805890] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47207780] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[47907790] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[50006300] = { title="破損的箱子", icon=1, tip=ns.chest1, continent=true },
	[51605000] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[51904860] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[52005130] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[53005020] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[56307550] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[65806480] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[66006350] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[68705190] = { title="破損的箱子", icon=1, tip=ns.chest1 },
	[69605320] = { title="破損的箱子", icon=1, tip=ns.chest1 },

	[53807680] = { npc=14430, name="暮色潛行者", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet, continent=true },
	[60207560] = { npc=14430, name="暮色潛行者", title="最佳獵人寵物", icon=16, class="HUNTER", guide=ns.bestPet },
}

points[ 1413 ] = { -- The Barrens
	[42102470] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43402370] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43602650] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[43702120] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[45102000] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[46603900] = { title="破損的箱子", icon=2, tip=ns.chest1, continent=true },
	[46502280] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[46601810] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[47001590] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[47701950] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[47901790] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[48903880] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[52501070] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[52501160] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[52904440] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[53404050] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[53904300] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[54504680] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[55902700] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[55904580] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[56600880] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[56804350] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[56902550] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[57104120] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[58802750] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[59102440] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[62804970] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[63504610] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[63704920] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	[64304730] = { title="破損的箱子", icon=2, tip=ns.chest1 },
	
	[37601630] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[38401310] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[39201190] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[40001600] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[42905510] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43304830] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[43305220] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45005140] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[45305430] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[46905360] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[51105750] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[51305490] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[52605230] = { title="破損的箱子", icon=2, tip=ns.chest2, continent=true },
	[53605400] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[59605400] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[59600280] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[60400350] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[61700520] = { title="破損的箱子", icon=2, tip=ns.chest2 },
	[62000420] = { title="破損的箱子", icon=2, tip=ns.chest2 },

	[41607870] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[42008170] = { title="堅固的箱子", icon=3, tip=ns.chest3, continent=true },
	[43108320] = { title="堅固的箱子", icon=3, tip=ns.chest3 },
	[44308290] = { title="堅固的箱子", icon=3, tip=ns.chest3 },

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
	[09803420] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[11503680] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[13903890] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[17604170] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[17802120] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[18502100] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[18902320] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[19402170] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[25805545] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[26605400] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[27105520] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[27205245] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[42203160] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[42203745] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[42303370] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[42903930] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[43103680] = { title="堅固的箱子", icon=4, tip=ns.chest4, continent=true },
	[43503320] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[43603770] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
	[44903230] = { title="堅固的箱子", icon=4, tip=ns.chest4 },
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
