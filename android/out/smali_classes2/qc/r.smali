.class public final Lqc/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp9/f;

.field public final b:Ljava/lang/Object;

.field public final c:Lqc/r$a;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Lp9/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqc/r;->a:Lp9/f;

    invoke-static {p2}, Lkotlinx/coroutines/internal/w;->b(Lp9/f;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lqc/r;->b:Ljava/lang/Object;

    new-instance p2, Lqc/r$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lqc/r$a;-><init>(Lkotlinx/coroutines/flow/g;Lp9/d;)V

    iput-object p2, p0, Lqc/r;->c:Lqc/r$a;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lqc/r;->a:Lp9/f;

    iget-object v1, p0, Lqc/r;->b:Ljava/lang/Object;

    iget-object v2, p0, Lqc/r;->c:Lqc/r$a;

    invoke-static {v0, p1, v1, v2, p2}, La6/a;->H(Lp9/f;Ljava/lang/Object;Ljava/lang/Object;Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
