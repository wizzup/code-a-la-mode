package com.codingame.game.model

object Constants {
  const val CUSTOMER_VALUE_DECAY = 30   // higher => slower decay

  enum class ITEM {
    FOOD, DISH, BANANA, RAW_PIE, WHOLE_PIE, BURNT_WAFFLE, BURNT_PIE
  }
  
  enum class FOOD(val value: Int) {
    VANILLA_BALL(1),
    CHOCOLATE_BALL(2),
    BUTTERSCOTCH_BALL(4),
    STRAWBERRIES(8),
    BLUEBERRIES(16),
    CHOPPED_BANANAS(32),
    STRAWBERRY_PIE(64),
    BLUEBERRY_PIE(128),
    WAFFLE(256)
  }
  
  enum class EQUIPMENT {
    WINDOW, DISH_RETURN, VANILLA_CRATE, CHOCOLATE_CRATE, BUTTERSCOTCH_CRATE,
    PIECRUST_CRATE, STRAWBERRY_CRATE, BLUEBERRY_CRATE, BANANA_CRATE,
    OVEN, CHOPPINGBOARD, WAFFLEIRON, JARBAGE
  }

  const val OVEN_COOKTIME = 10
  const val OVEN_BURNTIME = 10
  const val PIE_FRUITS_NEEDED = 3
  const val WAFFLE_COOKTIME = 8
  const val WAFFLE_BURNTIME = 5
}