.class public final Lqc/c;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lqc/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqc/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/d;Lkotlinx/coroutines/flow/g;Lqc/e;)V
    .locals 0

    iput-object p2, p0, Lqc/c;->c:Lkotlinx/coroutines/flow/g;

    iput-object p3, p0, Lqc/c;->d:Lqc/e;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Lqc/c;

    iget-object v1, p0, Lqc/c;->c:Lkotlinx/coroutines/flow/g;

    iget-object v2, p0, Lqc/c;->d:Lqc/e;

    invoke-direct {v0, p2, v1, v2}, Lqc/c;-><init>(Lp9/d;Lkotlinx/coroutines/flow/g;Lqc/e;)V

    iput-object p1, v0, Lqc/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lqc/c;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lqc/c;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lqc/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lqc/c;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lqc/c;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lnc/a0;

    .line 28
    .line 29
    iget-object v1, p0, Lqc/c;->d:Lqc/e;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lqc/e;->f(Lnc/a0;)Lpc/u;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput v2, p0, Lqc/c;->a:I

    .line 36
    .line 37
    iget-object v1, p0, Lqc/c;->c:Lkotlinx/coroutines/flow/g;

    .line 38
    .line 39
    invoke-static {v1, p1, v2, p0}, Lkotlinx/coroutines/flow/i;->a(Lkotlinx/coroutines/flow/g;Lpc/u;ZLp9/d;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 47
    .line 48
    :goto_0
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 52
    .line 53
    return-object p1
.end method
