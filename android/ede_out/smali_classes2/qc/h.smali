.class public final Lqc/h;
.super Lqc/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lqc/g<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final e:Lx9/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/q<",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;TT;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/q;Lkotlinx/coroutines/flow/f;Lp9/f;ILpc/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/q<",
            "-",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;-TT;-",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/f<",
            "+TT;>;",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lqc/g;-><init>(Lkotlinx/coroutines/flow/f;Lp9/f;ILpc/f;)V

    iput-object p1, p0, Lqc/h;->e:Lx9/q;

    return-void
.end method


# virtual methods
.method public final d(Lp9/f;ILpc/f;)Lqc/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")",
            "Lqc/e<",
            "TR;>;"
        }
    .end annotation

    new-instance v6, Lqc/h;

    iget-object v1, p0, Lqc/h;->e:Lx9/q;

    iget-object v2, p0, Lqc/g;->d:Lkotlinx/coroutines/flow/f;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lqc/h;-><init>(Lx9/q;Lkotlinx/coroutines/flow/f;Lp9/f;ILpc/f;)V

    return-object v6
.end method

.method public final g(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lqc/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lqc/h$a;-><init>(Lqc/h;Lkotlinx/coroutines/flow/g;Lp9/d;)V

    invoke-static {v0, p2}, Lb8/f;->t(Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
