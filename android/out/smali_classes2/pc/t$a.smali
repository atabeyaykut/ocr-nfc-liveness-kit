.class public final Lpc/t$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpc/t;->z(Lkotlinx/coroutines/selects/c;Lx9/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lpc/j<",
        "Ljava/lang/Object;",
        ">;",
        "Lp9/d<",
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.channels.ReceiveChannel$onReceiveOrNull$1$registerSelectClause1$1"
    f = "Channel.kt"
    l = {
        0x177
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lx9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/p<",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "-TR;>;",
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
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Lpc/t$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpc/t$a;->c:Lx9/p;

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

    new-instance v0, Lpc/t$a;

    iget-object v1, p0, Lpc/t$a;->c:Lx9/p;

    invoke-direct {v0, v1, p2}, Lpc/t$a;-><init>(Lx9/p;Lp9/d;)V

    iput-object p1, v0, Lpc/t$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lpc/j;

    .line 2
    .line 3
    iget-object p1, p1, Lpc/j;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Lp9/d;

    .line 6
    .line 7
    new-instance v0, Lpc/j;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lpc/j;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p2}, Lpc/t$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lpc/t$a;

    .line 17
    .line 18
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lpc/t$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lpc/t$a;->a:I

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
    goto :goto_3

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
    iget-object p1, p0, Lpc/t$a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lpc/j;

    .line 28
    .line 29
    iget-object p1, p1, Lpc/j;->a:Ljava/lang/Object;

    .line 30
    .line 31
    instance-of v1, p1, Lpc/j$a;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Lpc/j$a;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object v1, v3

    .line 41
    :goto_0
    if-nez v1, :cond_3

    .line 42
    .line 43
    move-object v1, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v1, v1, Lpc/j$a;->a:Ljava/lang/Throwable;

    .line 46
    .line 47
    :goto_1
    if-nez v1, :cond_6

    .line 48
    .line 49
    instance-of v1, p1, Lpc/j$b;

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move-object p1, v3

    .line 55
    :goto_2
    iput v2, p0, Lpc/t$a;->a:I

    .line 56
    .line 57
    iget-object v1, p0, Lpc/t$a;->c:Lx9/p;

    .line 58
    .line 59
    invoke-interface {v1, p1, p0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_5

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_5
    :goto_3
    return-object p1

    .line 67
    :cond_6
    throw v1
.end method
