.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "SourceFile"

# interfaces
.implements Lx7/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Ljava/util/List<",
        "Lx7/a;",
        ">;>;",
        "Lx7/b;"
    }
.end annotation


# static fields
.field public static final f:Lx7/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx7/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lx7/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->f:Lx7/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lz7/e;Ljava/util/concurrent/Executor;Lp4/v9;)V
    .locals 1
    .param p1    # Lz7/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lp4/v9;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;->f:Lx7/c;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lv7/f;Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lp4/b8;

    .line 7
    .line 8
    invoke-direct {p1}, Lp4/b8;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lz7/a;->a(Lx7/c;)Lp4/k9;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p1, Lp4/b8;->b:Lp4/k9;

    .line 16
    .line 17
    new-instance p2, Lp4/c8;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lp4/c8;-><init>(Lp4/b8;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lp4/q7;

    .line 23
    .line 24
    invoke-direct {p1}, Lp4/q7;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p1, Lp4/q7;->d:Lp4/c8;

    .line 28
    .line 29
    new-instance p2, Lp4/y9;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p2, p1, v0}, Lp4/y9;-><init>(Lp4/q7;I)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lp4/p7;->c:Lp4/p7;

    .line 36
    .line 37
    invoke-virtual {p3}, Lp4/v9;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p3, p2, p1, v0}, Lp4/v9;->c(Lp4/y9;Lp4/p7;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
