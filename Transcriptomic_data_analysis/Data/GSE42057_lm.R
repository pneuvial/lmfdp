path <- "Data"
pathname_X <- file.path(path, "GSE42057_X.csv")
X <- read.table(file = pathname_X, sep = ",")

pathname_Y <- file.path(path, "GSE42057_Y.csv")
Y <- read.table(file = pathname_Y, sep = ",")
Y <- as.matrix(Y)

idx_NA <- which(rowSums(is.na(X))>0)
if (length(idx_NA)) {
    X <- X[-idx_NA, ]
    Y <- Y[, -idx_NA ]
}

lm_them <- function(y) {
    df <- cbind(y = y, X)
    fit <- lm(fev1_fvc_utah ~ y + 
                  age_enroll +
                  ats_packyears +
                  bmi +
                  # distwalked +
                  gender + parentalcopd +
                  smokcignow
              , data = df)
    summary(fit)$coefficients[, 4] # p-value
}

res <- apply(Y, 1, lm_them)
sum(p.adjust(res["y", ], "BH") < 0.05)
# 1745 genes selected by the BH(0.05) procedure (= reproduces the original paper)

top_10 <- head(order(res["y", ]), 10)
res["y", top_10]
# 209397_at  214298_x_at  213377_x_at    200017_at  205005_s_at    210607_at  205255_x_at 
# 1.933265e-08 1.753161e-07 2.727596e-07 2.814437e-07 3.486889e-07 4.144585e-07 4.830882e-07 
# 

lm_me <- function(y) {
    df <- cbind(y = y, X)
    fit <- lm(y ~ fev1_fvc_utah + 
                  age_enroll +
                  ats_packyears +
                  bmi +
                  # distwalked +
                  gender + parentalcopd +
                  smokcignow
              , data = df)
    summary(fit)$coefficients[, 4] # p-value
}

res <- apply(Y, 1, lm_me)
sum(p.adjust(res["fev1_fvc_utah", ], "BH") < 0.05)
