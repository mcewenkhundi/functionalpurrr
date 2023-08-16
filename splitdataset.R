#Project: Functional purrr presentation
#Task: Split the penguins dataset by species and save datasets

library(palmerpenguins)

penguins_by_species <- split(x = penguins, f = penguins$species)

#if you do not expect to have values return back, walk is the best map variant of
#map
walk2(penguins_by_species, names(penguins_by_species),
      \(x, y){write_csv(x, file = here::here("data",paste0(y,".csv")))})

        