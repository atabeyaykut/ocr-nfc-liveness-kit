.class public abstract Lgf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgf/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgf/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lpc/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpc/m;

    invoke-direct {v0}, Lpc/m;-><init>()V

    iput-object v0, p0, Lgf/f;->a:Lpc/m;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/h;

    iget-object v1, p0, Lgf/f;->a:Lpc/m;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/h;-><init>(Lpc/m;)V

    return-object v0
.end method

.method public abstract c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lp9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final d(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lgf/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lgf/f$a;

    iget v1, v0, Lgf/f$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lgf/f$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lgf/f$a;

    invoke-direct {v0, p0, p2}, Lgf/f$a;-><init>(Lgf/f;Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lgf/f$a;->b:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lgf/f$a;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lgf/f$a;->a:Lpc/m;

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object p2, p0, Lgf/f;->a:Lpc/m;

    iput-object p2, v0, Lgf/f$a;->a:Lpc/m;

    iput v4, v0, Lgf/f$a;->d:I

    invoke-virtual {p0, p1, v0}, Lgf/f;->c(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    const/4 v2, 0x0

    iput-object v2, v0, Lgf/f$a;->a:Lpc/m;

    iput v3, v0, Lgf/f$a;->d:I

    invoke-virtual {p1, p2, v0}, Lpc/m;->p(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
