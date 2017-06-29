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

isZhandou=1

while(isZhandou > 0) do
  mSleep(1000)
  x, y = findMultiColorInRegionFuzzy(0xe7cfb6,"-3|1|0xc49c7a", 100, 2, 17, 221, 125)
  if x > -1 then
    
    showHUDDiay("正在战斗...")
  else
    showHUDDiay("没有战斗");
    -- 没有战斗则判断是否在巡逻
    x, y = findMultiColorInRegionFuzzy(0xb5753a,"2|0|0xf6ddb3,2|-1|0xeccba0", 100, 888, 200, 1027, 259)
    if x > -1 then
      tap(x, y);
      showHUDDiay("开始巡逻" ..x ..y);
      mSleep(10000);
    else
      sysLog("没有巡逻,那就要开始吃香了");
      x, y = findColorInRegionFuzzy(0xffe25a, 100, 1599, 904, 1820, 1066)
      if x > -1 then
        sysLog("找到包裹,开始点击包裹" ..x ..y)
        tap(x, y);
        isBaoguo = 1;
        while(isBaoguo > 0) 
        do
          mSleep(500)
          sysLog("找包裹");
          x, y = findMultiColorInRegionFuzzy(0x7c0101,"5|0|0xf7eac5", 90, 1641, 259, 1781, 433)
          if x > -1 then
            isBaoguo = 0
            sysLog("找到包裹了");
            --  查找引妖香
            x, y = findMultiColorInRegionFuzzy(0x292420,"4|0|0xcec6bd,8|0|0xbbb8ab", 90, 950, 289, 1614, 969)
            if x > -1 then
              sysLog("找到引妖香" ..x ..y)
              tap(x, y);
              mSleep(1000)
              -- 点击引妖香
              x, y = findMultiColorInRegionFuzzy(0xffffff,"6|-2|0x99d5bb", 90, 966, 296, 1600, 961)
              if x > -1 then
                tap(x, y);
                sysLog("点击了引妖香" ..x ..y);
                
                -- 点击确定
                mSleep(1000)
                x, y = findMultiColorInRegionFuzzy(0xe5f7ee,"-1|-1|0x9bd6bd", 100, 508, 193, 1613, 983)
                if x > -1 then
                  tap(x, y);
                  sysLog("点击了引妖香确定" ..x ..y);
                  mSleep(500)
                  tap(10, 10);
                  sysLog("关闭包裹" ..x ..y);
                  mSleep(2000)
                  
                  -- 检查是否有巡逻
                  x, y = findMultiColorInRegionFuzzy(0xb5753a,"2|0|0xf6ddb3,2|-1|0xeccba0", 90, 888, 200, 1027, 259)
                  if x > -1 then
                    
                    sysLog("开始巡逻" ..x ..y);
                    mSleep(500)
                  end
                end
              end
              
            else
              sysLog("没找引妖香");
            end
          else
            
            sysLog("没有找到包裹,继续循环")
            
          end
        end
        
      end
    end
  end
  
  
end

