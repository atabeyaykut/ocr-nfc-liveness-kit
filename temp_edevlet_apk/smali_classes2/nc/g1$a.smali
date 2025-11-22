.class public final Lnc/g1$a;
.super Lnc/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnc/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnc/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Lnc/g1;


# direct methods
.method public constructor <init>(Lp9/d;Lnc/g1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-TT;>;",
            "Lnc/g1;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lnc/j;-><init>(ILp9/d;)V

    iput-object p2, p0, Lnc/g1$a;->j:Lnc/g1;

    return-void
.end method


# virtual methods
.method public final l(Lnc/g1;)Ljava/lang/Throwable;
    .locals 2

    iget-object v0, p0, Lnc/g1$a;->j:Lnc/g1;

    invoke-virtual {v0}, Lnc/g1;->S()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnc/g1$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lnc/g1$c;

    invoke-virtual {v1}, Lnc/g1$c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    instance-of v1, v0, Lnc/r;

    if-eqz v1, :cond_2

    check-cast v0, Lnc/r;

    iget-object p1, v0, Lnc/r;->a:Ljava/lang/Throwable;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lnc/g1;->n()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
