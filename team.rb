class Team
    
    #インスタンスが持つ変数（値）
    attr_accessor :name, :win, :lose, :draw
    
    #scores = [["Giants", 67, 45, 8], ["Tigers", 60, 53, 7], ["Dragons", 60, 55, 5], ["BayStars", 56, 58, 6], ["Carp", 52, 56, 12], ["Swallows", 41, 69, 10]]
    
    #インスタンスを初期化するための特別なメソッド
    def initialize(name, wins, loses, draws)
        self.name = name
        self.win = wins
        self.lose = loses
        self.draw = draws
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

team_G = Team.new("Giants", 67, 45, 8)
team_T = Team.new("Tigers", 60, 53, 7)
team_D = Team.new("Dragons", 60, 55, 5)
team_B = Team.new("BayStars", 56, 58, 6)
team_C = Team.new("Carp", 52, 56, 12)
team_S = Team.new("Swallows", 41, 69, 10)

team_G.show_team_result
team_T.show_team_result
team_D.show_team_result
team_B.show_team_result
team_C.show_team_result
team_S.show_team_result