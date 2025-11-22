.class public final Lkotlinx/coroutines/flow/e0$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/e0;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.StateFlowImpl"
    f = "StateFlow.kt"
    l = {
        0x182,
        0x18e,
        0x193
    }
    m = "collect"
.end annotation


# instance fields
.field public a:Lkotlinx/coroutines/flow/e0;

.field public b:Lkotlinx/coroutines/flow/g;

.field public c:Lkotlinx/coroutines/flow/f0;

.field public d:Lnc/b1;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lkotlinx/coroutines/flow/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/e0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e0;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/e0<",
            "TT;>;",
            "Lp9/d<",
            "-",
            "Lkotlinx/coroutines/flow/e0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/e0$a;->g:Lkotlinx/coroutines/flow/e0;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/e0$a;->f:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/e0$a;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/e0$a;->h:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/e0$a;->g:Lkotlinx/coroutines/flow/e0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/e0;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
