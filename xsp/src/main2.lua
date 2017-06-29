require("bblibs.utils")

init(0, 1)


currentTime=mTime();
targetTime=currentTime+1800
sysLog("currentTime:" .. currentTime);
sysLog("targetTime:" .. targetTime);

-- 打开包裹
function openBaoguo()
  x, y = findColorInRegionFuzzy(0xffe25a, 100, 1599, 904, 1820, 1066)
  if x > -1 then
    sysLog("找到包裹,开始点击包裹" ..x ..y)
    tap(x, y)
    
  else
    sysLog("没找到包裹".. x ..y);
  end
  
end

-- 检查引妖香
function clickYinYoaoxiang()
  
  
  
end


if  frontAppName() == "com.netease.dhxy" then
  
  sysLog("当前是大话西游页");
  
  
  x, y = findColorInRegionFuzzy(0xffe25a, 100, 1599, 904, 1820, 1066)
  if x > -1 then
    sysLog("找到包裹,开始点击包裹" ..x ..y)
    tap(x, y);
    isBaoguo = 1;
    while(isBaoguo > 0) 
    do
      mSleep(500)
      sysLog("找包裹");
      x, y = findMultiColorInRegionFuzzy(0x7c0101,"5|0|0xf7eac5", 100, 1641, 259, 1781, 433)
      if x > -1 then
        isBaoguo = 0
        sysLog("找到包裹了");
        --  查找引妖香
        x, y = findMultiColorInRegionFuzzy(0x292420,"4|0|0xcec6bd,8|0|0xbbb8ab", 100, 950, 289, 1614, 969)
        if x > -1 then
          sysLog("找到引妖香" ..x ..y)
          tap(x, y);
          mSleep(1000)
          -- 点击引妖香
          x, y = findMultiColorInRegionFuzzy(0xffffff,"6|-2|0x99d5bb", 100, 966, 296, 1600, 961)
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
              x, y = findMultiColorInRegionFuzzy(0xb5753a,"2|0|0xf6ddb3,2|-1|0xeccba0", 100, 888, 200, 1027, 259)
              if x > -1 then
                tap(x, y);
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
  --  x, y = findColorInRegionFuzzy(0xffe25a, 100, 1599, 904, 1820, 1066)
  --  if x > -1 then
  --    sysLog("找到包裹,开始点击包裹" ..x ..y)
  --    tap(x, y)
  
  --    -- 查找引妖香
  --    mSleep(1000)
  
  
  --  else
  --    sysLog("没找到包裹".. x ..y);
  --  end
  
  
  
  
  --  x, y = findColorInRegionFuzzy(0xdef3e7, 100, 951, 293, 1611, 974)
  --  if x > -1 then
  --    tap(x, y)
  --  end
  --  mSleep(2000)
  
  --  x, y = findColorInRegionFuzzy(0x4abe94, 100, 514, 274, 1410, 810)
  --  if x > -1 then
  --    tap(x, y)
  --  end
  
  --  mSleep(2000)
  --  x, y = findColorInRegionFuzzy(0xd76963, 100, 1582, 80, 1727, 214)
  --  if x > -1 then
  --    tap(x, y)
  --  end
  
end





