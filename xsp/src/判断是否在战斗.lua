function isZhandou()
  
  x, y = findMultiColorInRegionFuzzy(0xe7cfb6,"-3|1|0xc49c7a", 100, 2, 17, 221, 125)
  if x > -1 then
    
    sysLog("正在战斗...")
    
    return 1
    
  else
    sysLog("没有战斗");
    
    return 0
  end
  
end


function isXunluo()
  
  x, y = findMultiColorInRegionFuzzy(0xb5753a,"2|0|0xf6ddb3,2|-1|0xeccba0", 100, 888, 200, 1027, 259)
  if x > -1 then
    tap(x, y);
    sysLog("开始巡逻" ..xiangNumer);
    return 1
  else
    sysLog("没有巡逻");
    return 0;
  end
end


function closeWindow()
  
  x, y = findMultiColorInRegionFuzzy(0xe7716b,"2|0|0xe7716b,6|1|0xee7273", 95, 8, 8, 1894, 1061)
  if x > -1 then
    tap(x,y)
  end
  sysLog("关闭窗口")
  
end