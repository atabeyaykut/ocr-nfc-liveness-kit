.class public final Lr0/m$a$c;
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
    c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$$special$$inlined$onReceive$1"
    f = "MavericksLifecycleAwareFlow.kt"
    l = {
        0x5c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lx9/p;

.field public final synthetic d:Lkotlin/jvm/internal/v;

.field public final synthetic e:Lkotlin/jvm/internal/v;

.field public final synthetic f:Lkotlin/jvm/internal/v;

.field public final synthetic g:Lx9/q;

.field public final synthetic h:Lpc/u;

.field public final synthetic j:Lkotlin/jvm/internal/t;


# direct methods
.method public constructor <init>(Lx9/p;Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V
    .locals 0

    iput-object p1, p0, Lr0/m$a$c;->c:Lx9/p;

    iput-object p3, p0, Lr0/m$a$c;->d:Lkotlin/jvm/internal/v;

    iput-object p4, p0, Lr0/m$a$c;->e:Lkotlin/jvm/internal/v;

    iput-object p5, p0, Lr0/m$a$c;->f:Lkotlin/jvm/internal/v;

    iput-object p6, p0, Lr0/m$a$c;->g:Lx9/q;

    iput-object p7, p0, Lr0/m$a$c;->h:Lpc/u;

    iput-object p8, p0, Lr0/m$a$c;->j:Lkotlin/jvm/internal/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 10
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

    new-instance v0, Lr0/m$a$c;

    iget-object v2, p0, Lr0/m$a$c;->c:Lx9/p;

    iget-object v4, p0, Lr0/m$a$c;->d:Lkotlin/jvm/internal/v;

    iget-object v5, p0, Lr0/m$a$c;->e:Lkotlin/jvm/internal/v;

    iget-object v6, p0, Lr0/m$a$c;->f:Lkotlin/jvm/internal/v;

    iget-object v7, p0, Lr0/m$a$c;->g:Lx9/q;

    iget-object v8, p0, Lr0/m$a$c;->h:Lpc/u;

    iget-object v9, p0, Lr0/m$a$c;->j:Lkotlin/jvm/internal/t;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lr0/m$a$c;-><init>(Lx9/p;Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V

    iput-object p1, v0, Lr0/m$a$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/m$a$c;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/m$a$c;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/m$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Lr0/m$a$c;->b:I

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
    iget-object p1, p0, Lr0/m$a$c;->a:Ljava/lang/Object;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iget-object v0, p0, Lr0/m$a$c;->h:Lpc/u;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lpc/u;->a(Ljava/util/concurrent/CancellationException;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lr0/m$a$c;->j:Lkotlin/jvm/internal/t;

    .line 36
    .line 37
    iput-boolean v2, p1, Lkotlin/jvm/internal/t;->a:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iput v2, p0, Lr0/m$a$c;->b:I

    .line 41
    .line 42
    iget-object v1, p0, Lr0/m$a$c;->c:Lx9/p;

    .line 43
    .line 44
    invoke-interface {v1, p1, p0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 52
    .line 53
    return-object p1
.end method
