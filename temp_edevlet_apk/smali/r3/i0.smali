.class public final Lr3/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e$a;


# instance fields
.field public final synthetic a:Ln3/e;

.field public final synthetic b:Lh5/l;

.field public final synthetic c:Lr3/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lh5/l;La6/a;)V
    .locals 0

    iput-object p1, p0, Lr3/i0;->a:Ln3/e;

    iput-object p2, p0, Lr3/i0;->b:Lh5/l;

    iput-object p3, p0, Lr3/i0;->c:Lr3/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lr3/i0;->a:Ln3/e;

    .line 12
    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 16
    .line 17
    iget-boolean v2, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    .line 18
    .line 19
    xor-int/2addr v1, v2

    .line 20
    const-string v2, "Result has already been consumed."

    .line 21
    .line 22
    invoke-static {v2, v1}, Lr3/r;->k(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/common/api/Status;->j:Lcom/google/android/gms/common/api/Status;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const-string v1, "Result is not ready."

    .line 51
    .line 52
    invoke-static {v1, v0}, Lr3/r;->k(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()Ln3/h;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lr3/i0;->b:Lh5/l;

    .line 60
    .line 61
    iget-object v1, p0, Lr3/i0;->c:Lr3/q;

    .line 62
    .line 63
    invoke-interface {v1, p1}, Lr3/q;->b(Ln3/h;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-virtual {v0, p1}, Lh5/l;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lr3/i0;->b:Lh5/l;

    .line 72
    .line 73
    invoke-static {p1}, Lr3/b;->a(Lcom/google/android/gms/common/api/Status;)Ln3/b;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Lh5/l;->a(Ljava/lang/Exception;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
