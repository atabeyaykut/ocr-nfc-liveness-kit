.class public final Lr0/m$a$d;
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
    c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1$1$1$4"
    f = "MavericksLifecycleAwareFlow.kt"
    l = {
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

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

    iput-object p2, p0, Lr0/m$a$d;->c:Lkotlin/jvm/internal/v;

    iput-object p3, p0, Lr0/m$a$d;->d:Lkotlin/jvm/internal/v;

    iput-object p4, p0, Lr0/m$a$d;->e:Lkotlin/jvm/internal/v;

    iput-object p5, p0, Lr0/m$a$d;->f:Lx9/q;

    iput-object p6, p0, Lr0/m$a$d;->g:Lpc/u;

    iput-object p7, p0, Lr0/m$a$d;->h:Lkotlin/jvm/internal/t;

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

    new-instance v0, Lr0/m$a$d;

    iget-object v3, p0, Lr0/m$a$d;->c:Lkotlin/jvm/internal/v;

    iget-object v4, p0, Lr0/m$a$d;->d:Lkotlin/jvm/internal/v;

    iget-object v5, p0, Lr0/m$a$d;->e:Lkotlin/jvm/internal/v;

    iget-object v6, p0, Lr0/m$a$d;->f:Lx9/q;

    iget-object v7, p0, Lr0/m$a$d;->g:Lpc/u;

    iget-object v8, p0, Lr0/m$a$d;->h:Lkotlin/jvm/internal/t;

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lr0/m$a$d;-><init>(Lp9/d;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lx9/q;Lpc/u;Lkotlin/jvm/internal/t;)V

    iput-object p1, v0, Lr0/m$a$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/m$a$d;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/m$a$d;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/m$a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lq9/a;->a:Lq9/a;

    iget v1, p0, Lr0/m$a$d;->b:I

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

    iget-object p1, p0, Lr0/m$a$d;->a:Ljava/lang/Object;

    iget-object v1, p0, Lr0/m$a$d;->e:Lkotlin/jvm/internal/v;

    iput-object p1, v1, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    iget-object v1, p0, Lr0/m$a$d;->d:Lkotlin/jvm/internal/v;

    iget-object v1, v1, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iput v2, p0, Lr0/m$a$d;->b:I

    iget-object v2, p0, Lr0/m$a$d;->f:Lx9/q;

    invoke-interface {v2, v1, p1, p0}, Lx9/q;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
