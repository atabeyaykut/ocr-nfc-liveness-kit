.class public final Lkotlinx/coroutines/flow/g0;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.SubscribedFlowCollector"
    f = "Share.kt"
    l = {
        0x1a3,
        0x1a7
    }
    m = "onSubscription"
.end annotation


# instance fields
.field public a:Lkotlinx/coroutines/flow/h0;

.field public b:Lqc/m;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlinx/coroutines/flow/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/h0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/h0;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/h0<",
            "Ljava/lang/Object;",
            ">;",
            "Lp9/d<",
            "-",
            "Lkotlinx/coroutines/flow/g0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/g0;->d:Lkotlinx/coroutines/flow/h0;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/g0;->c:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/g0;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/g0;->e:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/g0;->d:Lkotlinx/coroutines/flow/h0;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/h0;->a(Lp9/d;)Ll9/m;

    move-result-object p1

    return-object p1
.end method
