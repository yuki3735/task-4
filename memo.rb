    require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.chomp
 
    #続きを書いていきましょう！！(ifで条件分岐)
    # ファイル名の入力
    if memo_type == "1"
        puts "拡張子を除いたファイル名を入力してください"
        file_type = gets.chomp
    # 入力した内容を読み込み
        puts "メモしたい内容を記入してください"
        puts "完了したらCtrl + D を押してください"
        memo_type = $stdin.read
    # 保存
        CSV.open("#{file_type}.csv","w") do |csv|
        csv << ["#{memo_type}"]
        end
        
    elsif memo_type == "2"
        puts "編集したいファイル名を入力してください"
        file_type = gets.chomp
        
        puts "編集内容を記入してください"
        puts "完了したらCtrl + D を押してください"
        memo_type = $stdin.read
            
        CSV.open("#{file_type}.csv","a") do |csv|
        csv << ["#{memo_type}"]
        end

    else
        puts "error"　
    end
