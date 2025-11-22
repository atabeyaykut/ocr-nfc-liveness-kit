.class public final Lr0/d;
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
    c = "com.airbnb.mvrx.CoroutinesStateStore$setupTriggerFlushQueues$1"
    f = "CoroutinesStateStore.kt"
    l = {
        0x3b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lr0/c;


# direct methods
.method public constructor <init>(Lr0/c;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/d;->c:Lr0/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr0/d;

    iget-object v1, p0, Lr0/d;->c:Lr0/c;

    invoke-direct {v0, v1, p2}, Lr0/d;-><init>(Lr0/c;Lp9/d;)V

    iput-object p1, v0, Lr0/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/d;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/d;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lr0/d;->b:I

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
    iget-object v1, p0, Lr0/d;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lnc/a0;

    .line 13
    .line 14
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lr0/d;->a:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v1, p1

    .line 32
    check-cast v1, Lnc/a0;

    .line 33
    .line 34
    :cond_2
    :goto_0
    invoke-interface {v1}, Lnc/a0;->getCoroutineContext()Lp9/f;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v3, Lnc/b1$b;->a:Lnc/b1$b;

    .line 39
    .line 40
    invoke-interface {p1, v3}, Lp9/f;->get(Lp9/f$c;)Lp9/f$b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lnc/b1;

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-interface {p1}, Lnc/b1;->b()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    :goto_1
    if-eqz p1, :cond_4

    .line 55
    .line 56
    iput-object v1, p0, Lr0/d;->a:Ljava/lang/Object;

    .line 57
    .line 58
    iput v2, p0, Lr0/d;->b:I

    .line 59
    .line 60
    iget-object p1, p0, Lr0/d;->c:Lr0/c;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Lr0/c;->d(Lp9/d;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_2

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 70
    .line 71
    return-object p1
.end method
