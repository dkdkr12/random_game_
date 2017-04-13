class HomeController < ApplicationController
  def index
    
  end
  
  def game
    lotto = [*1..100]
    number = lotto.sample(1)
    mawang = ""
    number.each do |x|
      mawang = x
    end
    @mawang = mawang
    if @mawang == 44
      redirect_to '/home/mawang'
    end
    
    @name = params[:yname]
    
    times = ["석기시대","고대","중세","근대","현대"]
    my_times = times.sample(1)
    rmy_times = ""
    my_times.each do |x|
      rmy_times = x
    end
    @my_times = rmy_times
    
    country = ["미국","영국","한국","아프리카","일본","이탈리아","태국","페루","브라질","멕시코","미국","프랑스","독일","러시아","스웨덴","포르투갈","그리스"]
    my_contry = country.sample(1)
    rmy_contry = ""
    my_contry.each do |x|
      rmy_contry = x
    end
    @my_contry = rmy_contry
    
    
    job = ["군인","혁명가","교사","노비","귀족","노예","기사","죽창맨","아메바","헬리코박터균","영웅"]
    my_job = job.sample(1)
    rmy_job = ""
    my_job.each do |x|
      rmy_job = x
    end
    @my_job = rmy_job

    die = Hash.new
    die = {
      "병사" => "감기에 걸려서",
      "사고사" => "걷다가 돌부리에 걸려 넘어져",
      "전사" => "눈먼 화살에 맞아서",
      "아사" => "한달간 군만두만 먹다가 먹는걸 포기해서",
      "귀차니즘" => "숨쉬는 것도 귀찮아 하다가",
      "객사" => "걷다 지쳐서",
      "과로사" => "노예처럼 일만하다 밥먹는 것을 잊어먹어서",
      "자연사" => "행복하게 살다 수명이 다하여"
    }
    ran_die = die.to_a.sample(1)
    die_eu = ""
    die_name = ""
    ran_die.each do |x, y|
      die_name = x
      die_eu = y
    end
    @die_eu = die_eu
    @die_name = die_name
  end
end
