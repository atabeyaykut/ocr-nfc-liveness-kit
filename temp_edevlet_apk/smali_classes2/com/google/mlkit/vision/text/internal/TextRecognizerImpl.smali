.class public Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "SourceFile"

# interfaces
.implements Lc8/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Lc8/a;",
        ">;",
        "Lc8/c;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld8/h;Ljava/util/concurrent/Executor;Ls4/x8;Z)V
    .locals 0
    .param p1    # Ld8/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ls4/x8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lv7/f;Ljava/util/concurrent/Executor;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ls4/a7;

    .line 5
    .line 6
    invoke-direct {p1}, Ls4/a7;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p1, Ls4/a7;->c:Ljava/lang/Boolean;

    .line 14
    .line 15
    new-instance p2, Lcom/google/android/gms/internal/measurement/x;

    .line 16
    .line 17
    const/4 p4, 0x2

    .line 18
    invoke-direct {p2, p4}, Lcom/google/android/gms/internal/measurement/x;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance p4, Ls4/h8;

    .line 22
    .line 23
    invoke-direct {p4, p2}, Ls4/h8;-><init>(Lcom/google/android/gms/internal/measurement/x;)V

    .line 24
    .line 25
    .line 26
    iput-object p4, p1, Ls4/a7;->d:Ls4/h8;

    .line 27
    .line 28
    new-instance p2, Ls4/a9;

    .line 29
    .line 30
    const/4 p4, 0x1

    .line 31
    invoke-direct {p2, p1, p4}, Ls4/a9;-><init>(Ls4/a7;I)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Ls4/z6;->c:Ls4/z6;

    .line 35
    .line 36
    invoke-virtual {p3}, Ls4/x8;->c()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    invoke-virtual {p3, p2, p1, p4}, Ls4/x8;->b(Ls4/a9;Ls4/z6;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
