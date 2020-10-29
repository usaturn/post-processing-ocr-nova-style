#!/bin/gawk
# awk --re-interval -f after.awk

{
    gsub(/;/, ":", $1)
    converted=gensub(/(技能|上限|タイミング|対象|射程|目標値|対決|解説|社会|芸術|製作|BS|電制)(l|1|二|ニ)/, "\\1:", "g", $1)
    converted=gensub(/(上限|タイミング|対象|射程|目標値|対決|電制):(ー|一)/, "\\1:-", "g", converted)
    converted=gensub(/(ー|一)([0-9])/, "-\\1", "g", converted)
    gsub(/ァウ/, "アウ", converted)
    gsub(/ァク/, "アク", converted)
    gsub(/タ一/, "ター", converted)
    gsub(/ひとっ/, "ひとつ", converted)
    gsub(/→/, "ー〉", converted)
    gsub(/パり/, "パリ", converted)
    gsub(/白身/, "自身", converted)
    gsub(/自兵/, "白兵", converted)
    gsub(/白我/, "自我", converted)
    gsub(/言標/, "目標", converted)
    gsub(/技能:.言/, "技能:宣言", converted)
    gsub(/文寸/, "対", converted)
    gsub(/身寸/, "射", converted)
    gsub(/●/, "・", converted)
    gsub(/ニシァ/, "ニシア", converted)
    gsub(/ス一/, "スー", converted)
    gsub(/リ一/, "リー", converted)
    gsub(/一ド/, "ード", converted)
    gsub(/一ト/, "ート", converted)
    gsub(/ー般/, "一般", converted)
    gsub(/トり/, "トリ", converted)
    gsub(/力一/, "力ー", converted)
    gsub(/力ー/, "カー", converted)
    gsub(/一レベ/, "ーレベ", converted)
    gsub(/ー撃/, "一撃", converted)
    gsub(/ー段/, "一段", converted)
    gsub(/二ュ/, "ニュ", converted)
    gsub(/二ユ/, "ニュ", converted)
    gsub(/十/, "+", converted)
    gsub(/二ュ一/, "ニュー", converted)
    gsub(/ニュー□/, "ニューロ", converted)
    gsub(/ニュー口/, "ニューロ", converted)
    gsub(/フエイ/, "フェイ", converted)
    gsub(/工ニ/, "エニ", converted)
    gsub(/工イジ/, "エイジ", converted)
    gsub(/っめる/, "つめる", converted)
    gsub(/っまり/, "つまり", converted)
    gsub(/\[RSC/, "[RSC", converted)
    gsub(/ァレ/, "アレ", converted)
    gsub(/力ブ/, "カブ", converted)
    gsub(/力ッ/, "カッ", converted)
    gsub(/力レ/, "カレ", converted)
    gsub(/力タ/, "カタ", converted)
    gsub(/ワり/, "ワリ", converted)
    gsub(/ーレベル/, "-レベル", converted)
    gsub(/ウエッ/, "ウェッ", converted)
    gsub(/ウエア/, "ウェア", converted)
    gsub(/ァストラ/, "アストラ", converted)
    gsub(/ウエッド/, "ウェット\"", converted)
    gsub(/ェッド/, "ウット\"", converted)
    gsub(/ガ一/, "ガー", converted)
    gsub(/メ一/, "メー", converted)
    gsub(/ェン/, "エン", converted)
    gsub(/ァップ/, "アップ", converted)
    gsub(/りア/, "リア", converted)
    gsub(/ィァ/, "ィア", converted)
    gsub(/ェキス/, "エキス", converted)
    gsub(/÷\[/, "+[", converted)
    gsub(/i回/, "1回", converted)
    gsub(/I回/, "1回", converted)
    gsub(/io/, "10", converted)
    gsub(/Io/, "10", converted)
    gsub(/IO/, "10", converted)
    gsub(/iカッ/, "1カッ", converted)
    gsub(/Iカッ/, "1カッ", converted)
    gsub(/iシ/, "1シ", converted)
    gsub(/Iシ/, "1シ", converted)
    gsub(/Iアク/, "1アク", converted)
    gsub(/iアク/, "1アク", converted)
    gsub(/\+I/, "+1", converted)
    gsub(/\+i/, "+1", converted)
    gsub(/i点/, "1点", converted)
    gsub(/I点/, "1点", converted)
    gsub(/1J/, "1]", converted)
    gsub(/Lノ/, "1レ", converted)
    gsub(/【AR./, "【AR】", converted)
    gsub(/A副/, "AR】", converted)
    gsub(/\[レベル】/, "[レベル]", converted)
    gsub(/がO/, "が0", converted)
    gsub(/がO/, "が0", converted)
    gsub(/をO/, "を0", converted)
    gsub(/Oに/, "0に", converted)
    gsub(/1O/, "10", converted)
    gsub(/1O/, "10", converted)
    gsub(/ー\[/, "-[", converted)
    gsub(/一\[/, "-[", converted)
    gsub(/一1/, "-1", converted)
    gsub(/一2/, "-2", converted)
    gsub(/一3/, "-3", converted)

    print converted
}
