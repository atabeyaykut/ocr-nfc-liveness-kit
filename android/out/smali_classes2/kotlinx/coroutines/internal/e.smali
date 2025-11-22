.class public abstract Lkotlinx/coroutines/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lkotlinx/coroutines/internal/e<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _prev:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_next"

    const-class v1, Lkotlinx/coroutines/internal/e;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/e;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/e;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/internal/e;->_next:Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/e;->_prev:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/internal/s;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/e;->_next:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->_next:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lc5/e0;->c:Lkotlinx/coroutines/internal/u;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/e;

    .line 10
    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_1
    return v0
.end method

.method public final d()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/e;->_prev:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/e;

    .line 4
    .line 5
    :goto_1
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/e;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lkotlinx/coroutines/internal/e;->_prev:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lkotlinx/coroutines/internal/e;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/e;->_next:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object v2, Lc5/e0;->c:Lkotlinx/coroutines/internal/u;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    :goto_2
    move-object v1, v3

    .line 26
    goto :goto_3

    .line 27
    :cond_1
    check-cast v1, Lkotlinx/coroutines/internal/e;

    .line 28
    .line 29
    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/e;->b()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    iget-object v1, v1, Lkotlinx/coroutines/internal/e;->_next:Ljava/lang/Object;

    .line 39
    .line 40
    if-ne v1, v2, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iput-object v0, v1, Lkotlinx/coroutines/internal/e;->_prev:Ljava/lang/Object;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iput-object v1, v0, Lkotlinx/coroutines/internal/e;->_next:Ljava/lang/Object;

    .line 48
    .line 49
    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/e;->b()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/e;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    return-void
.end method
