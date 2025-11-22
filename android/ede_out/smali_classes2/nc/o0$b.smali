.class public abstract Lnc/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lnc/k0;
.implements Lkotlinx/coroutines/internal/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lnc/o0$b;",
        ">;",
        "Lnc/k0;",
        "Lkotlinx/coroutines/internal/y;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnc/o0$b;->a:J

    const/4 p1, -0x1

    iput p1, p0, Lnc/o0$b;->c:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lnc/o0$b;

    .line 2
    .line 3
    iget-wide v0, p0, Lnc/o0$b;->a:J

    .line 4
    .line 5
    iget-wide v2, p1, Lnc/o0$b;->a:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-gez p1, :cond_1

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnc/o0$b;->b:Ljava/lang/Object;

    sget-object v1, La6/a;->k:Lkotlinx/coroutines/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v2, v0, Lnc/o0$c;

    if-eqz v2, :cond_1

    check-cast v0, Lnc/o0$c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/x;->d(Lkotlinx/coroutines/internal/y;)V

    :goto_1
    iput-object v1, p0, Lnc/o0$b;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lnc/o0$b;->c:I

    return v0
.end method

.method public final n(Lnc/o0$c;)V
    .locals 2

    iget-object v0, p0, Lnc/o0$b;->b:Ljava/lang/Object;

    sget-object v1, La6/a;->k:Lkotlinx/coroutines/internal/u;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lnc/o0$b;->b:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q()Lkotlinx/coroutines/internal/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/x<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnc/o0$b;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/x;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/x;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lnc/o0$b;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delayed[nanos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lnc/o0$b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
