--[[

	Powered By :
		 _____       _  ____
		| ____|_ __ (_)/ ___|_ __ ___   __ _ TM
		|  _| | '_ \| | |  _| '_ ` _ \ / _` |
		| |___| | | | | |_| | | | | | | (_| |
		|_____|_| |_|_|\____|_| |_| |_|\__,_|
	
	****************************
	*  >> By : Reza Mehdipour  *
	*  > Channel : @EnigmaTM   *
	****************************
	
]]

HelpListUtilNow = [[
💠<b>/add</b> اضافه کردن گروه به لیست گروه های مدیریت شده

💠<b>/rem</b>  حذف گروه از لیست گروه های مدیریت شده

💠<b>/admins</b>  نمایش ادمین های گروه

💠<b>/gpinfo</b>  نمایش اطلاعات اصلی گروه

💠<b>/modlist</b>  نمایش لیست مدیران فرعی ربات در گروه

💠<b>/bots</b>  نمایش لیست ربات های معمولی موجود در گروه

💠<b>/owner</b> نمایش آیدی مدیر اصلی(اونر) ربات در گروه

💠<b>/filter</b> [word]  فیلتر کردن یک کلمه یا عبارت

💠<b>/rf [word]</b> رفع فیلتر یک کلمه یا عبارت فیلتر شده

💠<b>/filterlist</b> نمایش لیست کلمات فیلتر شده

💠<b>/del</b> {Reply}  حذف یک پیام در گروه با استفاده از ریپلای

💠<b>/setlink</b> تنظیم لینک

💠<b>/link</b> دریافت لینک

💠<b>/setowner</b>  تنظیم مدیر اصلی

💠<b>/promote</b>  ترفیع یک کاربر به عنوان مدیر فرعی ربات

💠<b>/demote</b>  عزل یک مدیر فرعی به یک کاربر عادی

💠<b>/clean [filterlist/silentlist/owner/gbanlist/banlist/modlist/deleted/bots]</b> پاکسازی سایلنت لیست و... 

💠<b>/lock [link/forward/bot/inline/cmd/english/spam/flood/persian/tg/strict/chat]</b> قفل لینک وفوروارد و... 

💠<b>/me</b> اطلاعات کاربر 

💠<b>/ban</b> بن با ریپلی

💠<b>/unban</b> آن بن با آیدی

💠<b>/banall</b> مسدودیت کامل 

💠<b>/unbanall</b> بازکردن مسدودیت کامل

💠<b>/silent</b> سایلنت با ریپلی

💠<b>/kick</b> اخراج با ریپلی

💠<b>/id</b> آیدی کاربر

💠<b>/idfrom</b> آیدی پیام فوروارد شده

💠<b>/banlist</b> بن لیست

💠<b>/gbanlist</b> لیست مسدودیت کامل

💠<b>/silentlist</b> سایلنت لیست

💠<b>/setflood [num]</b> تنظیم فلود

💠<b>/settings</b> تنظیمات

🔱 [~ <i>TAHA</i> ~] 🔱

]]

local function run(msg,matches)

	------- LOCK CMD
	data = load_data(_config.moderation.data)
	if data[tostring(msg.to.id)] then
		if data[tostring(msg.to.id)]['settings'] then
			if data[tostring(msg.to.id)]['settings']['lock_cmd'] then
				lock_cmd = data[tostring(msg.to.id)]['settings']['lock_cmd']
				if lock_cmd == "yes" and not is_momod(msg) then
					return
				end
			end
		end
	end
	-------
	
	if matches[1] == "راهنما" then
		return reply_msg(msg.id,HelpListUtilNow,ok_cb,false)
	end
	
	if matches[1] == "راهنمای" and matches[2] then
		
		if matches[2] == "قفل ها" then
			return reply_msg(msg.id,LocksHelp,ok_cb,false)
		end
		
		if matches[2] == "فیلتر" then
			return reply_msg(msg.id,FilterHelp,ok_cb,false)
		end
		
		if matches[2] == "اطلاعات" then
			return reply_msg(msg.id,GroupInformationHelp,ok_cb,false)
		end
		
	end -- end matches[1] == "راهنمای"

end	

return {
patterns = {
	"^(راهنما)$",
	"^(راهنمای) (.*)"
},
	run = run
}

--[[

	Powered By :
		 _____       _  ____
		| ____|_ __ (_)/ ___|_ __ ___   __ _ TM
		|  _| | '_ \| | |  _| '_ ` _ \ / _` |
		| |___| | | | | |_| | | | | | | (_| |
		|_____|_| |_|_|\____|_| |_| |_|\__,_|
	
	****************************
	*  >> By : Reza Mehdipour  *
	*  > Channel : @EnigmaTM   *
	****************************
	
]]
