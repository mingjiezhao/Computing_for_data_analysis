count <- function(cause = NULL) {
    ## Check that "cause" is non-NULL; else throw error
    ## Check that specific "cause" is allowed; else throw error
    
    ## Read "homicides.txt" data file
    
    ## Extract causes of death
    
    ## Return integer containing count of homicides for that cause

    if (is.null(cause)) {
        stop("cause can't be NULL")
    }
    if (!(cause %in% c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown"))) {
        stop("unknown cause")
    }

    homicides <- readLines("homicides.txt")
    to_find <- paste0("cause:\\s*", cause)
    length(grep(to_find, homicides, ignore.case = TRUE))
}


