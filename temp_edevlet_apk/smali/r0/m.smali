.class public final Lr0/m;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lkotlinx/coroutines/flow/g<",
        "Ljava/lang/Object;",
        ">;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "com.airbnb.mvrx.MavericksLifecycleAwareFlowKt$flowWhenStarted$1"
    f = "MavericksLifecycleAwareFlow.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lkotlinx/coroutines/flow/f;

.field public final synthetic d:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lr0/m;->c:Lkotlinx/coroutines/flow/f;

    iput-object p2, p0, Lr0/m;->d:Landroidx/lifecycle/LifecycleOwner;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr0/m;

    iget-object v1, p0, Lr0/m;->c:Lkotlinx/coroutines/flow/f;

    iget-object v2, p0, Lr0/m;->d:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, v1, v2, p2}, Lr0/m;-><init>(Lkotlinx/coroutines/flow/f;Landroidx/lifecycle/LifecycleOwner;Lp9/d;)V

    iput-object p1, v0, Lr0/m;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lp9/d;

    invoke-virtual {p0, p1, p2}, Lr0/m;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    move-result-object p1

    check-cast p1, Lr0/m;

    sget-object p2, Ll9/m;->a:Ll9/m;

    invoke-virtual {p1, p2}, Lr0/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lq9/a;->a:Lq9/a;

    iget v1, p0, Lr0/m;->b:I

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

    iget-object p1, p0, Lr0/m;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/g;

    new-instance v1, Lr0/m$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lr0/m$a;-><init>(Lr0/m;Lkotlinx/coroutines/flow/g;Lp9/d;)V

    iput v2, p0, Lr0/m;->b:I

    invoke-static {v1, p0}, Lb8/f;->t(Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
