def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.end_with? "?"
    return "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    return ""
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message == your_message.upcase
    return "I can feel your motivation! #{coach_answer(your_message)}"
  #unless your_message ==  "I AM GOING TO WORK RIGHT NOW!"
    #return ""
  else
    coach_answer(your_message)
  end
end