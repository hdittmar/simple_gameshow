json.extract! question, :id, :games_id, :title, :correct_option, :incorrect_option_1, :incorrect_option_2, :incorrect_option_3, :correct_guess, :question_type, :done, :created_at, :updated_at
json.url question_url(question, format: :json)
