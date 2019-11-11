protocol QuestionAnswerer {
    func responseToQuestion(question: String) -> String
}

struct MyQuestionAnswerer: QuestionAnswerer {
    func responseToQuestion(question: String) -> String {
        // TODO: Write a response 
        return "?"
    }
}
