

scatter_body_flip <- function(data, name_species = "All species") {
  ggplot(data, aes(x = flipper_length_mm,
                     y = body_mass_g)) +
  geom_point() +
  labs(y = "Body mass (g)",
       x = "Flipper length (mm)", title = name_species) +
  theme_bw()
}


penguins_by_species <- split(x = penguins, f = penguins$species)

walk2(penguins_by_species, names(penguins_by_species),
      \(x, y){write_csv(x, file = here::here("data",paste0(y,".csv")))})

        