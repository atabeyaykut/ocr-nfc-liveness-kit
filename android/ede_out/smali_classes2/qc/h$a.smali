.class public final Lqc/h$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqc/h;->g(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3"
    f = "Merge.kt"
    l = {
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lqc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqc/h<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqc/h;Lkotlinx/coroutines/flow/g;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqc/h<",
            "TT;TR;>;",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;",
            "Lp9/d<",
            "-",
            "Lqc/h$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lqc/h$a;->c:Lqc/h;

    iput-object p2, p0, Lqc/h$a;->d:Lkotlinx/coroutines/flow/g;

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

    new-instance v0, Lqc/h$a;

    iget-object v1, p0, Lqc/h$a;->c:Lqc/h;

    iget-object v2, p0, Lqc/h$a;->d:Lkotlinx/coroutines/flow/g;

    invoke-direct {v0, v1, v2, p2}, Lqc/h$a;-><init>(Lqc/h;Lkotlinx/coroutines/flow/g;Lp9/d;)V

    iput-object p1, v0, Lqc/h$a;->b:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lqc/h$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lqc/h$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lqc/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lq9/a;->a:Lq9/a;

    iget v1, p0, Lqc/h$a;->a:I

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

    iget-object p1, p0, Lqc/h$a;->b:Ljava/lang/Object;

    check-cast p1, Lnc/a0;

    new-instance v1, Lkotlin/jvm/internal/v;

    invoke-direct {v1}, Lkotlin/jvm/internal/v;-><init>()V

    iget-object v3, p0, Lqc/h$a;->c:Lqc/h;

    iget-object v4, v3, Lqc/g;->d:Lkotlinx/coroutines/flow/f;

    new-instance v5, Lqc/h$a$a;

    iget-object v6, p0, Lqc/h$a;->d:Lkotlinx/coroutines/flow/g;

    invoke-direct {v5, v1, p1, v3, v6}, Lqc/h$a$a;-><init>(Lkotlin/jvm/internal/v;Lnc/a0;Lqc/h;Lkotlinx/coroutines/flow/g;)V

    iput v2, p0, Lqc/h$a;->a:I

    invoke-interface {v4, v5, p0}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
