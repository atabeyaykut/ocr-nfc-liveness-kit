.class public final Lkotlinx/coroutines/flow/b0;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.SharedFlowImpl"
    f = "SharedFlow.kt"
    l = {
        0x175,
        0x17c,
        0x17f
    }
    m = "collect$suspendImpl"
.end annotation


# instance fields
.field public a:Lkotlinx/coroutines/flow/a0;

.field public b:Lkotlinx/coroutines/flow/g;

.field public c:Lkotlinx/coroutines/flow/c0;

.field public d:Lnc/b1;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lkotlinx/coroutines/flow/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/a0;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/a0<",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Lkotlinx/coroutines/flow/b0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/b0;->f:Lkotlinx/coroutines/flow/a0;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/b0;->e:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/b0;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/b0;->g:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/b0;->f:Lkotlinx/coroutines/flow/a0;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/flow/a0;->h(Lkotlinx/coroutines/flow/a0;Lkotlinx/coroutines/flow/g;Lp9/d;)Lq9/a;

    sget-object p1, Lq9/a;->a:Lq9/a;

    return-object p1
.end method
