#ジャンケン関数
def shrGame()
    puts "ジャンケンゲーム"
    while(1)
        puts "入力:1-グー 2-チョキ 3-パー"
        input = gets.to_s

        result = chkInput(input)
        if result == -1 || result == 4
            puts "入力が不正な値です。\n再入力してください。"        
        else 
            enemyChoice = rand(1..3)

            puts "あなた：" + chSHR(result) + " あいて：" + chSHR(enemyChoice)
            case result - enemyChoice
            when 0 then
                puts "あいこです！\n\n"
            when -1 , 2 then
                puts "勝利！\n\n"
                if arrowGame() == 1
                    return 1
                end
                puts "もう一度！"
            when 1 , -2 then
                puts "敗北・・・\n\n"
                if arrowGame() == 1
                    return 0
                end
                puts "もう一度！"
            end
        end

    end
end

#あっち向いてホイ関数
def arrowGame()
    puts "第二戦！あっち向いてホイ！\n1-上 2-右 3-下 4-左"
    input = 0
    while(1)
        input = gets.to_s
        result = chkInput(input)
        if result == -1
            puts "入力が不正な値です。\n再入力してください。"
        else
            break
        end
    end 

    enemyChoice = rand(1..4)

    puts "あなた：" + chArrow(result) + " あいて：" + chArrow(enemyChoice)
    if result - enemyChoice == 0
        return 1
    else 
        return 0
    end
end

#入力判定関数
def chkInput(input)
    input = input.to_i
    case input
    when 1 then
    when 2 then
    when 3 then
    when 4 then
    else
        return -1
    end
    return input
end

#ジャンケン変換
def chSHR(input)
    case input
    when 1 then
        return "グー"
    when 2 then
        return "チョキ"
    when 3 then
        return "パー"
    else
        return "不正な値" + input
    end
end

#方向変換
def chArrow(input)
    case input
    when 1 then
        return "上"
    when 2 then
        return "右"
    when 3 then
        return "下"
    when 4 then
        return "左"
    else
         return "不正な値" + input
    end
end




#メイン処理
puts "ゲームを始めましょう。勝敗が決するまで終われません。"
if shrGame() == 1
    puts "大勝利！おめでとう！"
else
    puts "大敗北・・・いいことあるよ！"
end

