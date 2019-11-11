import GameKit
typealias Guess = (Int, Int, Int, Int, Int, powerball: Int)
func play(guess: Guess) -> Int {
    
    let numberGenerator : GKRandomDistribution = GKRandomDistribution.init(lowestValue: 0, highestValue: 100)
    
    let jackpot: Int = numberGenerator.nextInt() * numberGenerator.nextInt() + 10_000
    let oneTenthOfJackpot = jackpot / 10
    var playerWinnings: Int = 0
    
    var amountWonForEachBallIfNotAllCorrect = [Int]()
    
    let winningNumbers: Guess = Guess(
        numberGenerator.nextInt(),
        numberGenerator.nextInt(),
        numberGenerator.nextInt(),
        numberGenerator.nextInt(),
        numberGenerator.nextInt(),
        powerball: numberGenerator.nextInt());
    
    let playerGuessedPowerball = guess.powerball == winningNumbers.powerball
    var playerOnlyGuessedPowerball: Bool = false
    
    if(guess == winningNumbers) {
        playerWinnings = jackpot
    } else if guess.0 == winningNumbers.0 {
        
        amountWonForEachBallIfNotAllCorrect.append(oneTenthOfJackpot);
    } else if guess.1 == winningNumbers.1 {
        
        amountWonForEachBallIfNotAllCorrect.append(oneTenthOfJackpot);
    } else if guess.2 == winningNumbers.2 {
        
        amountWonForEachBallIfNotAllCorrect.append(oneTenthOfJackpot);
    } else if guess.3 == winningNumbers.3 {
        
        amountWonForEachBallIfNotAllCorrect.append(oneTenthOfJackpot);
    } else if guess.4 == winningNumbers.4 {
        
        amountWonForEachBallIfNotAllCorrect.append(oneTenthOfJackpot);
    } else if guess.powerball == winningNumbers.powerball {
        
        amountWonForEachBallIfNotAllCorrect.append(oneTenthOfJackpot);
        playerOnlyGuessedPowerball = amountWonForEachBallIfNotAllCorrect.count == 0 ? true : false
        
    }
    
    if playerGuessedPowerball && playerOnlyGuessedPowerball {
        
        for i in 0..<amountWonForEachBallIfNotAllCorrect.count {
            amountWonForEachBallIfNotAllCorrect[i] *= 2;
        }
    }
    
    if guess != winningNumbers {
        for i in 0..<amountWonForEachBallIfNotAllCorrect.count {
            playerWinnings += amountWonForEachBallIfNotAllCorrect[i]
        }
    }
    
    return playerWinnings
}

print(play(guess: (0,0,0,0,0,0)))