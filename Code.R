category = paste0("Category", " ", 1:10)
percent = sort(c(12,45,89,78,45,66,44,32,46,78))
color = rev(rainbow(length(percent)))

library(circlize)
circos.par("start.degree" = 90, cell.padding = c(0, 0, 0, 0))
circos.initialize("a", xlim = c(0, 100)) # 'a` just means there is one sector
circos.track(ylim = c(0.5, length(percent)+0.5), track.height = 0.8, 
    bg.border = NA, panel.fun = function(x, y) {
        xlim = CELL_META$xlim
        circos.segments(rep(xlim[1], 10), 1:10,
                        rep(xlim[2], 10), 1:10,
                        col = "#CCCCCC")
        circos.rect(rep(0, 10), 1:10 - 0.45, percent, 1:10 + 0.45,
            col = color, border = "white")
        circos.text(rep(xlim[1], 10), 1:10, 
            paste(category, " - ", percent, "%"), 
            facing = "downward", adj = c(1.05, 0.5), cex = 0.8) 
        breaks = seq(0, 90, by = 5)
        circos.axis(h = "top", major.at = breaks, labels = paste0(breaks, "%"), 
            labels.cex = 0.6)
})



#or

# Define your gene names and corresponding percentages
genes = c("Gene1", "Gene2", "Gene3", "Gene4", "Gene5", "Gene6", "Gene7", "Gene8", "Gene9", "Gene10", "Gene11", "Gene12", "Gene13")
percent = sort(c(50.30, 16.35, 8.11, 9.53, 0.79, 1.35, 4.24, 2.39, 2.52, 2.02, 0.49, 0.49, 1.35))
color = rev(rainbow(length(percent)))

library(circlize)
circos.par("start.degree" = 90, cell.padding = c(0, 0, 0, 0))
circos.initialize("a", xlim = c(0, 100)) # 'a' just means there is one sector
circos.track(ylim = c(0.5, length(percent) + 0.5), track.height = 0.8, 
    bg.border = NA, panel.fun = function(x, y) {
        xlim = CELL_META$xlim
        circos.segments(rep(xlim[1], length(genes)), 1:length(genes),
                        rep(xlim[2], length(genes)), 1:length(genes),
                        col = "#CCCCCC")
        circos.rect(rep(0, length(genes)), 1:length(genes) - 0.45, percent, 1:length(genes) + 0.45,
            col = color, border = "white")
        circos.text(rep(xlim[1], length(genes)), 1:length(genes), 
            paste(genes, " - ", percent, "%"), 
            facing = "downward", adj = c(1.05, 0.5), cex = 0.8) 
        breaks = seq(0, 90, by = 5)
        circos.axis(h = "top", major.at = breaks, labels = paste0(breaks, "%"), 
            labels.cex = 0.6)
})

