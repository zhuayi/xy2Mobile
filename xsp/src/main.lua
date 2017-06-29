init(0, 1);
id = createHUD()     --创建一个HUD

function showHUDDiay(text)
  
  showHUD(id, text ,24,"0xff29ae52","0xff101019", 2 , 100, 0,258 ,42)      --显示HUD内容
  
  
end

-- 模拟一次点击
function tap(x, y)
  local x, y = x, y
  math.randomseed(tostring(os.time()):reverse():sub(1, 6))  --设置随机数种子
  local index = math.random(1,5)
  x = x + math.random(-1,1) 
  y = y + math.random(-1,1)
  touchDown(index,x, y)
  mSleep(math.random(70,80))                --某些特殊情况需要增大延迟才能模拟点击效果
  touchUp(index, x, y)
  mSleep(50)
end

require "打开包裹"
require "吃香"
require "判断是否在战斗"

i=1
xiangNumer=0



while(i > 0) do
  
  if (isZhandou() == 0 and isXunluo() == 0) then
		sysLog("没香了?2秒后再重试次")
    mSleep(2000);
		if (isZhandou() == 0 and isXunluo() == 0) then
			if (findBaogup() == 1 ) then
				chixiang();
				xiangNumer = xiangNumer + 1
				mSleep(500)
				closeWindow()
				currentTime = 1800;
			else
      
				closeWindow()
      end
		else
		sysLog("有香状态");
    end
	else
		
		sysLog("有香状态");
	
  end
  mSleep(5000);
  
end


-- x, y = findMultiColorInRegionFuzzy(0xdff3ef,"0|-6|0xeff7f7,0|-9|0x9bd6bd", 95, 324, 211, 1269, 790)


