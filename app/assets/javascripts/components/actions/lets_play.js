export const ADD_PLAYER_GAME = 'ADD_PLAYER_GAME'
export const REMOVE_PLAYER_GAME = 'REMOVE_PLAYER_GAME'

export function addPlayerGame(game_id) {
  return { type: ADD_PLAYER_GAME, game: game_id  }
}

export function removePlayerGame(game_id) {
  return { type: REMOVE_PLAYER_GAME, game: game_id  }
}
