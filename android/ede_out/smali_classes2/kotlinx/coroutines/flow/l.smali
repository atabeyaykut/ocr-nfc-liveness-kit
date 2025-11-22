.class public final Lkotlinx/coroutines/flow/l;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lr9/c;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.FlowKt__EmittersKt"
    f = "Emitters.kt"
    l = {
        0xd8
    }
    m = "invokeSafely$FlowKt__EmittersKt"
.end annotation


# instance fields
.field public a:Ljava/lang/Throwable;

.field public synthetic b:Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lkotlinx/coroutines/flow/l;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/l;->b:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/l;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/l;->c:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, La2/b;->f(Lkotlinx/coroutines/flow/i0;Lx9/q;Ljava/lang/Throwable;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
