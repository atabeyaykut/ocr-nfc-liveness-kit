.class public final Lkotlinx/coroutines/flow/s;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/q<",
        "Lkotlinx/coroutines/flow/g<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1"
    f = "Merge.kt"
    l = {
        0xd6,
        0xd6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Lkotlinx/coroutines/flow/g;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/p;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/p<",
            "Ljava/lang/Object;",
            "-",
            "Lp9/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Lkotlinx/coroutines/flow/s;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/s;->d:Lx9/p;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/g;

    .line 2
    .line 3
    check-cast p3, Lp9/d;

    .line 4
    .line 5
    new-instance v0, Lkotlinx/coroutines/flow/s;

    .line 6
    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/flow/s;->d:Lx9/p;

    .line 8
    .line 9
    invoke-direct {v0, v1, p3}, Lkotlinx/coroutines/flow/s;-><init>(Lx9/p;Lp9/d;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lkotlinx/coroutines/flow/s;->b:Lkotlinx/coroutines/flow/g;

    .line 13
    .line 14
    iput-object p2, v0, Lkotlinx/coroutines/flow/s;->c:Ljava/lang/Object;

    .line 15
    .line 16
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lq9/a;->a:Lq9/a;

    iget v1, p0, Lkotlinx/coroutines/flow/s;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/flow/s;->b:Lkotlinx/coroutines/flow/g;

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlinx/coroutines/flow/s;->b:Lkotlinx/coroutines/flow/g;

    iget-object p1, p0, Lkotlinx/coroutines/flow/s;->c:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/flow/s;->b:Lkotlinx/coroutines/flow/g;

    iput v3, p0, Lkotlinx/coroutines/flow/s;->a:I

    iget-object v3, p0, Lkotlinx/coroutines/flow/s;->d:Lx9/p;

    invoke-interface {v3, p1, p0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lkotlinx/coroutines/flow/s;->b:Lkotlinx/coroutines/flow/g;

    iput v2, p0, Lkotlinx/coroutines/flow/s;->a:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
