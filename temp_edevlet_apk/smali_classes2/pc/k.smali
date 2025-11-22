.class public final Lpc/k;
.super Lpc/x;
.source "SourceFile"

# interfaces
.implements Lpc/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/x;",
        "Lpc/v<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lpc/x;-><init>()V

    iput-object p1, p0, Lpc/k;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 0

    return-void
.end method

.method public final K()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final L(Lpc/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/k<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final M(Lkotlinx/coroutines/internal/j$c;)Lkotlinx/coroutines/internal/u;
    .locals 1

    sget-object v0, Lc5/w;->g:Lkotlinx/coroutines/internal/u;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j$c;->d()V

    :goto_0
    return-object v0
.end method

.method public final O()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lpc/k;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lpc/l;

    invoke-direct {v0}, Lpc/l;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final P()Ljava/lang/Throwable;
    .locals 3

    iget-object v0, p0, Lpc/k;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lma/w;

    const-string v1, "Channel was closed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lma/w;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;
    .locals 0

    sget-object p1, Lc5/w;->g:Lkotlinx/coroutines/internal/u;

    return-object p1
.end method

.method public final k()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Closed@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpc/k;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
