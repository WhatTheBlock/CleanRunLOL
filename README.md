# CleanRun League of Legends

## 介紹
可單純啟動LOL，解決Garena用戶端占用電腦資源問題  
特別適用電腦效能差、網路環境差的人

## 使用方式
1. 使用Garena用戶端開啟LOL
2. 跳出LOL讀取畫面後即可啟動`CleanRunLOL`
3. 等待遊戲自動重開，完成

## 原理
1. 在正常開啟遊戲時取得真實啟動指令
2. 關閉Garena用戶端與LOL
3. 使用真實啟動指令開啟LOL

*這個工具負責完成`RiotClientServices.exe`已開啟並取得登入碼之後的自動化工作*

----

## Q&A
Q：這個工具安全嗎？會不會被盜帳號？  
A：請參考原始碼，我有註解詳細的指令用途。

Q：原始碼是批次檔，為何release的檔案是exe？  
A：exe版可讓執行過程都在背景執行，不信任的人請自行使用批次檔執行。

Q：下載時出現警告正常嗎？  
A：瀏覽器下載exe或bat等檔案都會先警告用戶，選擇"保留"即可。

Q：被防毒軟體偵測為病毒！？  
A：exe使用UPX壓縮過，部分防毒軟體為了提高防毒能力會對加殼程式特別敏感，此為誤判，還是那句話，不信任的人請自行使用批次檔執行。

----

## Credits
[三島由紀夫](https://home.gamer.com.tw/q347)、[曉亦夏風](https://home.gamer.com.tw/evildjkay)
