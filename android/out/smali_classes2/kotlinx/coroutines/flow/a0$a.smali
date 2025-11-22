.class public final Lkotlinx/coroutines/flow/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a0<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Ljava/lang/Object;

.field public final d:Lp9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/a0;JLjava/lang/Object;Lnc/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/a0$a;->a:Lkotlinx/coroutines/flow/a0;

    iput-wide p2, p0, Lkotlinx/coroutines/flow/a0$a;->b:J

    iput-object p4, p0, Lkotlinx/coroutines/flow/a0$a;->c:Ljava/lang/Object;

    iput-object p5, p0, Lkotlinx/coroutines/flow/a0$a;->d:Lp9/d;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/a0$a;->a:Lkotlinx/coroutines/flow/a0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lkotlinx/coroutines/flow/a0$a;->b:J

    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/a0;->l()J

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-gez v5, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/a0;->g:[Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Lkotlinx/coroutines/flow/a0$a;->b:J

    .line 21
    .line 22
    long-to-int v3, v2

    .line 23
    array-length v2, v1

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    and-int/2addr v2, v3

    .line 27
    aget-object v2, v1, v2

    .line 28
    .line 29
    if-eq v2, p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v2, Lc5/v;->c:Lkotlinx/coroutines/internal/u;

    .line 33
    .line 34
    array-length v4, v1

    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 36
    .line 37
    and-int/2addr v3, v4

    .line 38
    aput-object v2, v1, v3

    .line 39
    .line 40
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/a0;->g()V

    .line 41
    .line 42
    .line 43
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :goto_0
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0

    .line 49
    throw v1
.end method
