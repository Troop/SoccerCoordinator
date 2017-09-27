// PROJECT ONE SOCCER TEAM COORDINATOR

//DATABASE (Dictionaries)

let player1 : [String : Any] = ["Name" : "Joe Smith",
    "Height" : 42.4,
    "SoccerExperience" : true,
    "GuardianName" : "Jim and Jan Smith"]
let player2 : [String : Any] = ["Name" : "Jill Tanner",
    "Height" : 36,
    "SoccerExperience" : true,
    "GuardianName" : "Clara Tanner"]
let player3 : [String : Any] = ["Name" : "Bill Bon",
    "Height" : 43,
    "SoccerExperience" : true,
    "GuardianName" : "Sara and Jenny Bon"]
let player4 : [String : Any] = ["Name" : "Eva Gordon",
    "Height" : 45,
    "SoccerExperience" : false,
    "GuardianName" : "Wendy and Mike Gordon"]
let player5 : [String : Any] = ["Name" : "Matt Gill",
    "Height" : 40,
    "SoccerExperience" : false,
    "GuardianName" : "Charles and Sylvia Gill"]
let player6 : [String: Any] = ["Name" : "Kimmy Stein",
    "Height" : 41,
    "SoccerExperience" : false,
    "GuardianName" : "Bill and Hillary Stein"]
let player7 : [String : Any] = ["Name" : "Sammy Adams",
    "Height" : 45,
    "SoccerExperience" : false,
    "GuardianName" : "Jeff Adams"]
let player8 : [String : Any] = ["Name" : "Karl Saygan",
    "Height" : 42,
    "SoccerExperience" : true,
    "GuardianName" : "Heather Bledsoe"]
let player9 : [String : Any] = ["Name" : "Suzane Greenberg",
    "Height" : 44,
    "SoccerExperience" : true,
    "GuardianName" : "Henrietta Dumas"]
let player10 : [String : Any] = ["Name" : "Sal Dali",
    "Height" : 41,
    "SoccerExperience" : false,
    "GuardianName" : "Gala Dali"]
let player11 : [String : Any] = ["Name" : "Joe Kavalier",
    "Height" : 42,
    "SoccerExperience" : false,
    "GuardianName" : "Sam and Elaine Kavalier"]
let player12 : [String : Any] = ["Name" : "Ben Finkelstein",
    "Height" : 44,
    "SoccerExperience" : false,
    "GuardianName" : "Aaron and Jill Finkelstein"]
let player13 : [String: Any] = ["Name" : "Diego Soto",
    "Height" : 41,
    "SoccerExperience" : true,
    "GuardianName" : "Robin and Sarika Soto"]
let player14 : [String : Any] = ["Name" : "Chloe Alaska",
    "Height" : 47,
    "SoccerExperience" : false,
    "GuardianName" : "David and Jamie Alaska"]
let player15 : [String: Any] = ["Name" : "Arnold Willis",
    "Height" : 43,
    "SoccerExperience" : false,
    "GuardianName" : "Claire Willis"]
let player16 : [String: Any] = ["Name" : "Phillip Helm",
    "Height" : 44,
    "SoccerExperience" : true,
    "GuardianName" : "Thomas Helm and Eva Jones"]
let player17 : [String: Any] = ["Name" : "Les Clay",
    "Height" : 42,
    "SoccerExperience" : true,
    "GuardianName" : "Wynonna Brown"]
let player18 : [String: Any] = ["Name" : "Herschel Krustofski",
    "Height" : 45,
    "SoccerExperience" : true,
    "GuardianName" : "Hyman and Rachel Krustofski"]
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
for numb in playersList
{
//Go through the Array finding matches with the "SoccerExperience" == true
    let isExperenced: Bool = numb["SoccerExperience"] as! Bool
    if isExperenced == true
    {
        experiencedPlayers.append(numb)
        //Adding Team to PLayers
    }
    else
    {
        rookiePlayers.append(numb)
        //Function
    }
}

//ADDING PLAYERS
for numb in playersList
{
    if(playersList[numb] == experiencedPlayers)
    {
        playersList.append(["Team" : "Sharks"])
    }
}



