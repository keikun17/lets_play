import { ADD_PLAYER_GAME, REMOVE_PLAYER_GAME } from '../actions/games.js'

// https://github.com/wclittle/Rails5-ActionCable-Redux-React-ChatAppExample/blob/master/app/assets/javascripts/components/reducers/chat.js
export default function game(state = {}, action){
  const { type, games } = action

  switch(type) {
    case ADD_PLAYER_GAME:
      return [
      ...state,
      action.games
    ]
    case REMOVE_PLAYER_GAME:
      return [
      ...state,
      action.games
    ]
    default:
      return state
  }
}


