function chixiang()
  x, y = findMultiColorInRegionFuzzy(0x292420,"4|0|0xcec6bd,8|0|0xbbb8ab", 90, 950, 289, 1614, 969)
  if x > -1 then
    sysLog("找到引妖香" ..x ..y)
    tap(x, y);
    mSleep(1000)
    
    -- 点击使用
    x, y = findMultiColorInRegionFuzzy(0xffffff,"6|-2|0x99d5bb", 95, 966, 296, 1600, 961)
    if x > -1 then
      tap(x, y);
      sysLog("点击了引妖香" ..x ..y);
      
      -- 点击确定
      mSleep(1000)
      x, y = findMultiColorInRegionFuzzy(0xe5f7ee,"-1|-1|0x9bd6bd", 100, 508, 193, 1613, 983)
      if x > -1 then
        tap(x, y);
				sysLog("点击了引妖香确定" ..x ..y);
        return 1;

      end
    end
    
  else
    sysLog("没找引妖香");
		return 0;
  end
  
  
end