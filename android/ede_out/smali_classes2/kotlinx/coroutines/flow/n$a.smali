.class public final Lkotlinx/coroutines/flow/n$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/n;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1"
    f = "Errors.kt"
    l = {
        0x71,
        0x72
    }
    m = "collect"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lkotlinx/coroutines/flow/n;

.field public d:Lkotlinx/coroutines/flow/n;

.field public e:Lkotlinx/coroutines/flow/g;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/n;Lp9/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/n$a;->c:Lkotlinx/coroutines/flow/n;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/n$a;->a:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/n$a;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/n$a;->b:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/n$a;->c:Lkotlinx/coroutines/flow/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/n;->a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
