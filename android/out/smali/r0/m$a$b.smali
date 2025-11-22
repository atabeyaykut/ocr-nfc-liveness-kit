.class public final Lr0/m$a$b;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/m$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Ljava/lang/Boolean;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$1$2"
    f = "MavericksLifecycleAwareFlow.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Z

.field public b:I

.field public final synthetic c:Lkotlin/jvm/internal/v;

.field public final synthetic d:Lkotlin/jvm/internal/v;

.field public final synthetic e:Lkotlin/jvm/internal/v;

.field public final synthetic f:Lx9/q;

.field public final synthetic g:Lpc/u;

.field public final synthetic h:Lkotlin/jvm/internal/t;


# direct methods
.method public constructor <init>(Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V
    .locals 0

    iput-object p2, p0, Lr0/m$a$b;->c:Lkotlin/jvm/internal/v;

    iput-object p3, p0, Lr0/m$a$b;->d:Lkotlin/jvm/internal/v;

    iput-object p4, p0, Lr0/m$a$b;->e:Lkotlin/jvm/internal/v;

    iput-object p5, p0, Lr0/m$a$b;->f:Lx9/q;

    iput-object p6, p0, Lr0/m$a$b;->g:Lpc/u;

    iput-object p7, p0, Lr0/m$a$b;->h:Lkotlin/jvm/internal/t;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 9
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

    new-instance v0, Lr0/m$a$b;

    iget-object v3, p0, Lr0/m$a$b;->c:Lkotlin/jvm/internal/v;

    iget-object v4, p0, Lr0/m$a$b;->d:Lkotlin/jvm/internal/v;

    iget-object v5, p0, Lr0/m$a$b;->e:Lkotlin/jvm/internal/v;

    iget-object v6, p0, Lr0/m$a$b;->f:Lx9/q;

    iget-object v7, p0, Lr0/m$a$b;->g:Lpc/u;

    iget-object v8, p0, Lr0/m$a$b;->h:Lkotlin/jvm/internal/t;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lr0/m$a$b;-><init>(Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lr0/m$a$b;->a:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/m$a$b;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/m$a$b;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/m$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lr0/m$a$b;->b:I

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
    goto :goto_0

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
    iget-boolean p1, p0, Lr0/m$a$b;->a:Z

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p0, Lr0/m$a$b;->d:Lkotlin/jvm/internal/v;

    .line 32
    .line 33
    iput-object v1, v3, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p0, Lr0/m$a$b;->e:Lkotlin/jvm/internal/v;

    .line 36
    .line 37
    iget-object v3, v1, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, v1, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iput v2, p0, Lr0/m$a$b;->b:I

    .line 50
    .line 51
    iget-object v2, p0, Lr0/m$a$b;->f:Lx9/q;

    .line 52
    .line 53
    invoke-interface {v2, p1, v1, p0}, Lx9/q;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_3

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 61
    .line 62
    const-string v0, "null cannot be cast to non-null type T"

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 69
    .line 70
    return-object p1
.end method
