.class public final Lqc/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqc/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Lnc/b1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lnc/a0;

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
.method public constructor <init>(Lkotlin/jvm/internal/v;Lnc/a0;Lqc/h;Lkotlinx/coroutines/flow/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/v<",
            "Lnc/b1;",
            ">;",
            "Lnc/a0;",
            "Lqc/h<",
            "TT;TR;>;",
            "Lkotlinx/coroutines/flow/g<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lqc/h$a$a;->a:Lkotlin/jvm/internal/v;

    iput-object p2, p0, Lqc/h$a$a;->b:Lnc/a0;

    iput-object p3, p0, Lqc/h$a$a;->c:Lqc/h;

    iput-object p4, p0, Lqc/h$a$a;->d:Lkotlinx/coroutines/flow/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lqc/h$a$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lqc/h$a$a$b;

    iget v1, v0, Lqc/h$a$a$b;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lqc/h$a$a$b;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lqc/h$a$a$b;

    invoke-direct {v0, p0, p2}, Lqc/h$a$a$b;-><init>(Lqc/h$a$a;Lp9/d;)V

    :goto_0
    iget-object p2, v0, Lqc/h$a$a$b;->d:Ljava/lang/Object;

    sget-object v1, Lq9/a;->a:Lq9/a;

    iget v2, v0, Lqc/h$a$a$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lqc/h$a$a$b;->b:Ljava/lang/Object;

    iget-object v0, v0, Lqc/h$a$a$b;->a:Lqc/h$a$a;

    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object p2, p0, Lqc/h$a$a;->a:Lkotlin/jvm/internal/v;

    iget-object p2, p2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    check-cast p2, Lnc/b1;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Lqc/i;

    invoke-direct {v2}, Lqc/i;-><init>()V

    invoke-interface {p2, v2}, Lnc/b1;->a(Ljava/util/concurrent/CancellationException;)V

    iput-object p0, v0, Lqc/h$a$a$b;->a:Lqc/h$a$a;

    iput-object p1, v0, Lqc/h$a$a$b;->b:Ljava/lang/Object;

    iput-object p2, v0, Lqc/h$a$a$b;->c:Lnc/b1;

    iput v3, v0, Lqc/h$a$a$b;->f:I

    invoke-interface {p2, v0}, Lnc/b1;->r(Lqc/h$a$a$b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    move-object v0, p0

    :goto_2
    iget-object p2, v0, Lqc/h$a$a;->a:Lkotlin/jvm/internal/v;

    new-instance v1, Lqc/h$a$a$a;

    iget-object v2, v0, Lqc/h$a$a;->d:Lkotlinx/coroutines/flow/g;

    iget-object v4, v0, Lqc/h$a$a;->c:Lqc/h;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, p1, v5}, Lqc/h$a$a$a;-><init>(Lqc/h;Lkotlinx/coroutines/flow/g;Ljava/lang/Object;Lp9/d;)V

    iget-object p1, v0, Lqc/h$a$a;->b:Lnc/a0;

    const/4 v0, 0x4

    invoke-static {p1, v5, v0, v1, v3}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    move-result-object p1

    iput-object p1, p2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
