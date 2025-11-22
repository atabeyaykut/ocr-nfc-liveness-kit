.class public Lkotlinx/coroutines/internal/j$d;
.super Lkotlinx/coroutines/internal/j$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/j$a;"
    }
.end annotation


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _affectedNode:Ljava/lang/Object;

.field private volatile synthetic _originalNext:Ljava/lang/Object;

.field public final b:Lkotlinx/coroutines/internal/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "_affectedNode"

    const-class v1, Lkotlinx/coroutines/internal/j$d;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j$d;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_originalNext"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/j$d;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/j$a;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/j$d;->b:Lkotlinx/coroutines/internal/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/internal/j$d;->_affectedNode:Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/j$d;->_originalNext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Lkotlinx/coroutines/internal/j;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/j$d;->b:Lkotlinx/coroutines/internal/j;

    if-ne p1, v0, :cond_0

    sget-object p1, Lb0/a;->c:Lkotlinx/coroutines/internal/u;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final d(Lkotlinx/coroutines/internal/j;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->v()Lkotlinx/coroutines/internal/j;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(Lkotlinx/coroutines/internal/j$c;)V
    .locals 4

    iget-object v0, p1, Lkotlinx/coroutines/internal/j$c;->a:Lkotlinx/coroutines/internal/j;

    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/j$d;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_0
    sget-object v0, Lkotlinx/coroutines/internal/j$d;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p1, Lkotlinx/coroutines/internal/j$c;->b:Lkotlinx/coroutines/internal/j;

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    return-void
.end method

.method public final f()Lkotlinx/coroutines/internal/j;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/j$d;->_affectedNode:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/j;

    return-object v0
.end method

.method public final g()Lkotlinx/coroutines/internal/j;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/internal/j$d;->_originalNext:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/j;

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/internal/p;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/internal/p;

    iget-object p1, p1, Lkotlinx/coroutines/internal/p;->a:Lkotlinx/coroutines/internal/j;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->C()V

    const/4 p1, 0x1

    return p1
.end method

.method public final k(Lkotlinx/coroutines/internal/o;)Lkotlinx/coroutines/internal/j;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/j$d;->b:Lkotlinx/coroutines/internal/j;

    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/internal/j;->_next:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/internal/o;

    if-eqz v2, :cond_1

    check-cast v1, Lkotlinx/coroutines/internal/o;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/internal/o;->b(Lkotlinx/coroutines/internal/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/j$d;->b:Lkotlinx/coroutines/internal/j;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/o;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    check-cast v1, Lkotlinx/coroutines/internal/j;

    return-object v1
.end method

.method public final l(Lkotlinx/coroutines/internal/j;)Lkotlinx/coroutines/internal/p;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->H()Lkotlinx/coroutines/internal/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final m()Lkotlinx/coroutines/internal/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/j$d;->_affectedNode:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/j;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
