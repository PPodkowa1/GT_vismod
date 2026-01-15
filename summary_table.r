# Summary table

# HUE
lump_i1.side <- lumpest(mi1.side)
lump_i1.maxi <- lumpest(mi1.maxi)
lump_i1.mand <- lumpest(mi1.mand)
lump_i1.pala <- lumpest(mi1.pala)
rows_i1 <- tribble(
    ~term, ~side, ~maxi, ~mand, ~pala,
    "Dark in A2 hue i",
    paste0(sprintf("%.3f (%.3f)", lump_i1.side[1], lump_i1.side[2]), starring(lump_i1.side)),
    paste0(sprintf("%.3f (%.3f)", lump_i1.maxi[1], lump_i1.maxi[2]), starring(lump_i1.maxi)),
    paste0(sprintf("%.3f (%.3f)", lump_i1.mand[1], lump_i1.mand[2]), starring(lump_i1.mand)),
    paste0(sprintf("%.3f (%.3f)", lump_i1.pala[1], lump_i1.pala[2]), starring(lump_i1.pala))
)
# attr(rows, "position") <- c(9,10)

# LUM
lump_i4.side <- lumpest(mi4.side)
lump_i4.maxi <- lumpest(mi4.maxi)
lump_i4.mand <- lumpest(mi4.mand)
lump_i4.pala <- lumpest(mi4.pala)
rows_i4 <- tribble(
    ~term, ~side, ~maxi, ~mand, ~pala,
    "Dark in A2 lum i",
    paste0(sprintf("%.3f (%.3f)", lump_i4.side[1], lump_i4.side[2]), starring(lump_i4.side)),
    paste0(sprintf("%.3f (%.3f)", lump_i4.maxi[1], lump_i4.maxi[2]), starring(lump_i4.maxi)),
    paste0(sprintf("%.3f (%.3f)", lump_i4.mand[1], lump_i4.mand[2]), starring(lump_i4.mand)),
    paste0(sprintf("%.3f (%.3f)", lump_i4.pala[1], lump_i4.pala[2]), starring(lump_i4.pala))
)
# attr(rows, "position") <- c(10,12)

# HUE
lump_r1.side <- lumpest(mr1.side)
lump_r1.maxi <- lumpest(mr1.maxi)
lump_r1.mand <- lumpest(mr1.mand)
lump_r1.pala <- lumpest(mr1.pala)
rows_r1 <- tribble(
    ~term, ~side, ~maxi, ~mand, ~pala,
    "Dark in A2 hue r",
    paste0(sprintf("%.3f (%.3f)", lump_r1.side[1], lump_r1.side[2]), starring(lump_r1.side)),
    paste0(sprintf("%.3f (%.3f)", lump_r1.maxi[1], lump_r1.maxi[2]), starring(lump_r1.maxi)),
    paste0(sprintf("%.3f (%.3f)", lump_r1.mand[1], lump_r1.mand[2]), starring(lump_r1.mand)),
    paste0(sprintf("%.3f (%.3f)", lump_r1.pala[1], lump_r1.pala[2]), starring(lump_r1.pala))
)
# attr(rows, "position") <- c(9,10)

# LUM
lump_r4.side <- lumpest(mr4.side)
lump_r4.maxi <- lumpest(mr4.maxi)
lump_r4.mand <- lumpest(mr4.mand)
lump_r4.pala <- lumpest(mr4.pala)
rows_r4 <- tribble(
    ~term, ~side, ~maxi, ~mand, ~pala,
    "Dark in A2 lum r",
    paste0(sprintf("%.3f (%.3f)", lump_r4.side[1], lump_r4.side[2]), starring(lump_r4.side)),
    paste0(sprintf("%.3f (%.3f)", lump_r4.maxi[1], lump_r4.maxi[2]), starring(lump_r4.maxi)),
    paste0(sprintf("%.3f (%.3f)", lump_r4.mand[1], lump_r4.mand[2]), starring(lump_r4.mand)),
    paste0(sprintf("%.3f (%.3f)", lump_r4.pala[1], lump_r4.pala[2]), starring(lump_r4.pala))
)
# attr(rows, "position") <- c(9,10)

# S9
lump_r5.side <- lumpest(mr5.side)
lump_r5.maxi <- lumpest(mr5.maxi)
lump_r5.mand <- lumpest(mr5.mand)
lump_r5.pala <- lumpest(mr5.pala)
rows_r5 <- tribble(
    ~term, ~side, ~maxi, ~mand, ~pala,
    "Dark in A2 chroma",
    paste0(sprintf("%.3f (%.3f)", lump_r5.side[1], lump_r5.side[2]), starring(lump_r5.side)),
    paste0(sprintf("%.3f (%.3f)", lump_r5.maxi[1], lump_r5.maxi[2]), starring(lump_r5.maxi)),
    paste0(sprintf("%.3f (%.3f)", lump_r5.mand[1], lump_r5.mand[2]), starring(lump_r5.mand)),
    paste0(sprintf("%.3f (%.3f)", lump_r5.pala[1], lump_r5.pala[2]), starring(lump_r5.pala))
)
# attr(rows, "position") <- c(9,10)

rows <- rbind(rows_r5, rows_i1, rows_i4, rows_r1, rows_r4)
# attr(rows, "position") <- c(1, 2, 3, 4, 5)
panels <- list(
    `Carotenoid chroma` = list(Flange = mr5.side, Maxilla = mr5.maxi, Mandible = mr5.mand, Palate = mr5.pala),
    `Hue - ideal ill.` = list(Flange = mi1.side, Maxilla = mi1.maxi, Mandible = mi1.mand, Palate = mi1.pala),
    `Luminance - ideal ill.` = list(Flange = mi4.side, Maxilla = mi4.maxi, Mandible = mi4.mand, Palate = mi4.pala),
    `Hue - real ill.` = list(Flange = mr1.side, Maxilla = mr1.maxi, Mandible = mr1.mand, Palate = mr1.pala),
    `Luminance - real ill.` = list(Flange = mr4.side, Maxilla = mr4.maxi, Mandible = mr4.mand, Palate = mr4.pala)
)

modelsummary(panels,
    shape = "rbind",
    statistic = NULL,
    estimate = "{estimate} ({std.error}){stars}",
    gof_omit = ".+",
    stars = c("*" = 0.05, "**" = 0.01, "***" = 0.001),
    coef_omit = "^SD.*",
    output = "table.docx",
    add_rows = rows, notes = "* - p < 0.05, ** - p < 0.01, *** - p < 0.001"
)









modelsummary(list(Flange = mi4.side, Maxilla = mi4.maxi, Mandible = mi4.mand, Palate = mi4.pala),
    statistic = NULL,
    estimate = "{estimate} ({std.error}){stars}",
    gof_omit = ".+",
    stars = c("*" = 0.05, "**" = 0.01, "***" = 0.001),
    coef_omit = "^SD.*",
    add_rows = rows, notes = "* - p < 0.05, ** - p < 0.01, *** - p < 0.001"
)


modelsummary(list(Flange = mr1.side, Maxilla = mr1.maxi, Mandible = mr1.mand, Palate = mr1.pala),
    statistic = NULL,
    estimate = "{estimate} ({std.error}){stars}",
    gof_omit = ".+",
    stars = c("*" = 0.05, "**" = 0.01, "***" = 0.001),
    coef_omit = "^SD.*",
    add_rows = rows, notes = "* - p < 0.05, ** - p < 0.01, *** - p < 0.001"
)


modelsummary(list(Flange = mr4.side, Maxilla = mr4.maxi, Mandible = mr4.mand, Palate = mr4.pala),
    statistic = NULL,
    estimate = "{estimate} ({std.error}){stars}",
    gof_omit = ".+",
    stars = c("*" = 0.05, "**" = 0.01, "***" = 0.001),
    coef_omit = "^SD.*",
    add_rows = rows, notes = "* - p < 0.05, ** - p < 0.01, *** - p < 0.001"
)


modelsummary(list(Flange = mr5.side, Maxilla = mr5.maxi, Mandible = mr5.mand, Palate = mr5.pala),
    statistic = NULL,
    estimate = "{estimate} ({std.error}){stars}",
    gof_omit = ".+",
    stars = c("*" = 0.05, "**" = 0.01, "***" = 0.001),
    coef_omit = "^SD.*",
    add_rows = rows, notes = "* - p < 0.05, ** - p < 0.01, *** - p < 0.001"
)

# modelsummary(list(mi1.side, mi1.maxi, mi1.mand, mi1.pala),
#              estimate = "{estimate} ({std.error})",
#              statistic = NULL,
#              stars = T)