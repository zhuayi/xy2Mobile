-- 打开包裹
function findBaogup()
  
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
				return 1;
			else
				return 0
      end
    end
  else
    return 0;
  end
  
end