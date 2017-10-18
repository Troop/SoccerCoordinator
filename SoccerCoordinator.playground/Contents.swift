// PROJECT ONE SOCCER TEAM COORDINATOR

//DATABASE (Dictionaries)

let player1 : [String : Any] = ["name" : "Joe Smith",
    "Height" : 42.4,
    "soccerExperience" : true,
    "guardianName" : "Jim and Jan Smith"]
let player2 : [String : Any] = ["name" : "Jill Tanner",
    "height" : 36,
    "soccerExperience" : true,
    "guardianName" : "Clara Tanner"]
let player3 : [String : Any] = ["name" : "Bill Bon",
    "height" : 43,
    "soccerExperience" : true,
    "guardianName" : "Sara and Jenny Bon"]
let player4 : [String : Any] = ["name" : "Eva Gordon",
    "height" : 45,
    "soccerExperience" : false,
    "guardianName" : "Wendy and Mike Gordon"]
let player5 : [String : Any] = ["name" : "Matt Gill",
    "height" : 40,
    "soccerExperience" : false,
    "guardianName" : "Charles and Sylvia Gill"]
let player6 : [String: Any] = ["name" : "Kimmy Stein",
    "height" : 41,
    "soccerExperience" : false,
    "guardianName" : "Bill and Hillary Stein"]
let player7 : [String : Any] = ["name" : "Sammy Adams",
    "height" : 45,
    "soccerExperience" : false,
    "guardianName" : "Jeff Adams"]
let player8 : [String : Any] = ["name" : "Karl Saygan",
    "height" : 42,
    "soccerExperience" : true,
    "guardianName" : "Heather Bledsoe"]
let player9 : [String : Any] = ["name" : "Suzane Greenberg",
    "height" : 44,
    "soccerExperience" : true,
    "guardianName" : "Henrietta Dumas"]
let player10 : [String : Any] = ["name" : "Sal Dali",
    "height" : 41,
    "soccerExperience" : false,
    "guardianName" : "Gala Dali"]
let player11 : [String : Any] = ["name" : "Joe Kavalier",
    "height" : 42,
    "soccerExperience" : false,
    "guardianName" : "Sam and Elaine Kavalier"]
let player12 : [String : Any] = ["name" : "Ben Finkelstein",
    "height" : 44,
    "soccerExperience" : false,
    "guardianName" : "Aaron and Jill Finkelstein"]
let player13 : [String: Any] = ["name" : "Diego Soto",
    "height" : 41,
    "soccerExperience" : true,
    "guardianName" : "Robin and Sarika Soto"]
let player14 : [String : Any] = ["name" : "Chloe Alaska",
    "height" : 47,
    "soccerExperience" : false,
    "guardianName" : "David and Jamie Alaska"]
let player15 : [String: Any] = ["name" : "Arnold Willis",
    "height" : 43,
    "soccerExperience" : false,
    "guardianName" : "Claire Willis"]
let player16 : [String: Any] = ["name" : "Phillip Helm",
    "height" : 44,
    "soccerExperience" : true,
    "guardianName" : "Thomas Helm and Eva Jones"]
let player17 : [String: Any] = ["name" : "Les Clay",
    "height" : 42,
    "soccerExperience" : true,
    "guardianName" : "Wynonna Brown"]
let player18 : [String: Any] = ["name" : "Herschel Krustofski",
    "height" : 45,
    "soccerExperience" : true,
    "guardianName" : "Hyman and Rachel Krustofski"]
var playersList = [player1,
                   player2,
                   player3,
                   player4,
                   player5,
                   player6,
                   player7,
                   player8,
                   player9,
                   player10,
                   player11,
                   player12,
                   player13,
                   player14,
                   player15,
                   player16,
                   player17,
                   player18]
//Added all the player to an Array and now ill go throught and find the Experience players and add them to a different category

var experiencedPlayers : [[String: Any]] = []
var rookiePlayers : [[String: Any]] = []
let numberOfTeams : Int = 3
var sharkTeam : [[String : Any]] = []
var dragonsTeam : [[String : Any]] = []
var raptorsTeam : [[String : Any]] = []


//ORGANISING PLAYERS
for players in playersList
{
//Go through the Array finding matches with the "SoccerExperience" == true
    let isExperenced: Bool = players["soccerExperience"] as! Bool
    if isExperenced == true
    {
        experiencedPlayers.append(players)
        //Adding Team to PLayers
    }
    else
    {
        rookiePlayers.append(players)
        //Function
    }
}

//ADDING EXPERIENCE PLAYERS
for players in experiencedPlayers
{
    if (sharkTeam.count < numberOfTeams)
    {
        sharkTeam.append(players)
    }
    else if(sharkTeam.count == numberOfTeams && dragonsTeam.count < numberOfTeams)
    {
        dragonsTeam.append(players)
    }
    else
    {
        raptorsTeam.append(players)
    }
}
//ADDING INEXPERIENCE PLAYERS
for players in rookiePlayers
{
    if (sharkTeam.count < playersList.count/numberOfTeams)
    {
        sharkTeam.append(players)
    }
    else if(sharkTeam.count == playersList.count/numberOfTeams && dragonsTeam.count < playersList.count/numberOfTeams)
    {
        dragonsTeam.append(players)
    }
    else
    {
        raptorsTeam.append(players)
    }
}
//SENDING LETTER
var letters: [String] = []
for teamPlayer in dragonsTeam
{
    let dragonPractiseTime : [String : Any] = ["team" : "Team Dragons"
        ,"date" : "March 17, 1PM"]
    letters.append("Dear ,\(teamPlayer["guardianName"]!), We are glad to comunicate you that your 'Little' Soccer Player, \(teamPlayer["name"]!), joined, \(dragonPractiseTime["team"]!) and practise will be on \(dragonPractiseTime["date"]!)")
}
for teamPlayer in sharkTeam
{
    let sharkPractiseTime : [String : Any] = ["team": "Team Sharks", "date": "March 17, 3PM"]
    letters.append("Dear ,\(teamPlayer["guardianName"]!), We are glad to comunicate you that your 'Little' Soccer Player, \(teamPlayer["name"]!), joined, \(sharkPractiseTime["team"]!) and practise will be on \(sharkPractiseTime["date"]!)")
}
for teamPlayer in sharkTeam
{
    let raptorsPractiseTime : [String : Any] = ["team" : "Team Raptors","date" : "March 18, 1PM"]
    letters.append("Dear ,\(teamPlayer["guardianName"]!), We are glad to comunicate you that your 'Little' Soccer Player, \(teamPlayer["name"]!), joined, \(raptorsPractiseTime["team"]!) and practise will be on \(raptorsPractiseTime["date"]!)")
}
for letter in letters
{
print(letter)
}



