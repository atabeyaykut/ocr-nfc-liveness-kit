.class public final Lr0/m$a$e;
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
    c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$$special$$inlined$onReceive$2"
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

    iput-object p1, p0, Lr0/m$a$e;->c:Lx9/p;

    iput-object p3, p0, Lr0/m$a$e;->d:Lkotlin/jvm/internal/v;

    iput-object p4, p0, Lr0/m$a$e;->e:Lkotlin/jvm/internal/v;

    iput-object p5, p0, Lr0/m$a$e;->f:Lkotlin/jvm/internal/v;

    iput-object p6, p0, Lr0/m$a$e;->g:Lx9/q;

    iput-object p7, p0, Lr0/m$a$e;->h:Lpc/u;

    iput-object p8, p0, Lr0/m$a$e;->j:Lkotlin/jvm/internal/t;

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

    new-instance v0, Lr0/m$a$e;

    iget-object v2, p0, Lr0/m$a$e;->c:Lx9/p;

    iget-object v4, p0, Lr0/m$a$e;->d:Lkotlin/jvm/internal/v;

    iget-object v5, p0, Lr0/m$a$e;->e:Lkotlin/jvm/internal/v;

    iget-object v6, p0, Lr0/m$a$e;->f:Lkotlin/jvm/internal/v;

    iget-object v7, p0, Lr0/m$a$e;->g:Lx9/q;

    iget-object v8, p0, Lr0/m$a$e;->h:Lpc/u;

    iget-object v9, p0, Lr0/m$a$e;->j:Lkotlin/jvm/internal/t;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lr0/m$a$e;-><init>(Lx9/p;Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V

    iput-object p1, v0, Lr0/m$a$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/m$a$e;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/m$a$e;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/m$a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lq9/a;->a:Lq9/a;

    iget v1, p0, Lr0/m$a$e;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/m$a$e;->a:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p1, p0, Lr0/m$a$e;->j:Lkotlin/jvm/internal/t;

    iput-boolean v2, p1, Lkotlin/jvm/internal/t;->a:Z

    goto :goto_0

    :cond_2
    iput v2, p0, Lr0/m$a$e;->b:I

    iget-object v1, p0, Lr0/m$a$e;->c:Lx9/p;

    invoke-interface {v1, p1, p0}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
