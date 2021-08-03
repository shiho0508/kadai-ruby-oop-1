class Team
    
    #インスタンスが持つ変数（値）
    attr_accessor :name, :win, :lose, :draw
    
    #scores = [["Giants", 67, 45, 8], ["Tigers", 60, 53, 7], ["Dragons", 60, 55, 5], ["BayStars", 56, 58, 6], ["Carp", 52, 56, 12], ["Swallows", 41, 69, 10]]
    
    #インスタンスを初期化するための特別なメソッド
    def initialize(num)
        scores = [["Giants", 67, 45, 8], ["Tigers", 60, 53, 7], ["Dragons", 60, 55, 5], ["BayStars", 56, 58, 6], ["Carp", 52, 56, 12], ["Swallows", 41, 69, 10]]
        self.name = scores[num][0]
        self.win = scores[num][1]
        self.lose = scores[num][2]
        self.draw = scores[num][3]
    end
    
    #インスタンスが持つメソッド（処理）
    def calc_win_rate
        self.win.to_f / (self.win.to_f + self.lose.to_f)
    end
    
    def show_team_result
        puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{calc_win_rate}です。"
    end
    
end

#team = Team.new(0)

(0..5).each do |num|
    team = Team.new(num)
    team.show_team_result
end


#scores = [["Giants", 67, 45, 8], ["Tigers", 60, 53, 7], ["Dragons", 60, 55, 5], ["BayStars", 56, 58, 6], ["Carp", 52, 56, 12], ["Swallows", 41, 69, 10]]