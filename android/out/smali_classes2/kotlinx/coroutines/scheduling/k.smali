.class public final Lkotlinx/coroutines/scheduling/k;
.super Lnc/y;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/k;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/k;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/k;->a:Lkotlinx/coroutines/scheduling/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnc/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatch(Lp9/f;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lkotlinx/coroutines/scheduling/c;->b:Lkotlinx/coroutines/scheduling/c;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/j;->g:Lgd/d;

    .line 4
    .line 5
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/f;->a:Lkotlinx/coroutines/scheduling/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/a;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/h;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchYield(Lp9/f;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lkotlinx/coroutines/scheduling/c;->b:Lkotlinx/coroutines/scheduling/c;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/j;->g:Lgd/d;

    .line 4
    .line 5
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/f;->a:Lkotlinx/coroutines/scheduling/a;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/a;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/h;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
